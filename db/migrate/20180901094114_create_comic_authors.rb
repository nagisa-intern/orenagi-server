class CreateComicAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :comic_authors do |t|

      t.timestamps
    end
  end
end
