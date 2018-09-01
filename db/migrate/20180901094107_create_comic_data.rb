class CreateComicData < ActiveRecord::Migration[5.1]
  def change
    create_table :comic_data do |t|

      t.timestamps
    end
  end
end
