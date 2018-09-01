class Location < ApplicationRecord
  has_many :comics
  has_many :location_comics
end
