class Location < ApplicationRecord
  has_many :location_comics
  has_many :comics, through: :location_comics
end
