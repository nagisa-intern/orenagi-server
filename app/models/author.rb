class Author < ApplicationRecord
  has_many :comics
  has_many :comic_authors
end
