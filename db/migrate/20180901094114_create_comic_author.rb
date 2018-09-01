class CreateComicAuthor < ActiveRecord::Migration[5.1]
  def change
    create_table :comic_author do |t|
      t.references :comic, foreign_key: true, null: false
      t.references :author, foreign_key: true, null: false
    end
  end
end
