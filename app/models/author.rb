class Author < ApplicationRecord
  has_many :comics, through: :comic_authors
  has_many :comic_authors
end
