class ComicAuthor < ApplicationRecord
  self.table_name = "comic_author"

  belongs_to :comic
  belongs_to :author
end
