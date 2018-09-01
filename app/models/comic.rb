class Comic < ApplicationRecord
  has_many :comic_authors
  has_many :location_comics
  has_many :authors, through: :comic_authors
  has_many :locations, through: :location_comics
end
