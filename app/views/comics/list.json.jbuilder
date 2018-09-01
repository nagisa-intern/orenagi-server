json.array! @comics do |comic|
  json.id comic.id
  json.title comic.title
  json.author do
    json.array! comic.authors do |author|
      json.name author.name
    end
  end
  json.imgURL "https://s3-ap-northeast-1.amazonaws.com/nagisa-intern/comic/#{comic.id}/square_thumb.jpeg"
  json.linkURL comic.linkURL
end
