class Comic < ApplicationRecord
  has_many :authors
  has_many :comic_authors
  has_many :locations
  has_many :location_comics
end
