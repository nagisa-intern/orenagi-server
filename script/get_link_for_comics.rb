#! /usr/bin/ruby

require 'nokogiri'
require 'open-uri'

url = 'https://jihen.jp/'

charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

titles = []
links = []
doc.xpath('//ul[@class="list"]/li').each do |node|
  titles << node.css('.product__title').inner_text
  links << node.css('.product__button')[0][:href]
end

File.open("sql/add_link.sql", "w") do |f|
  f.puts("alter table jihen_intern.comics add linkURL varchar(256);")
  titles.length.times do |i|
    link = '"https://jihen.jp' + links[i] + '"'
    title = '"' + titles[i] + '"'
    f.puts("update jihen_intern.comics SET linkURL = #{link} WHERE title = #{title};")
  end
end

