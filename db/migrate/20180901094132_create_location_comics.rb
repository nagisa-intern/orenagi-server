class CreateLocationComics < ActiveRecord::Migration[5.1]
  def change
    create_table :location_comics do |t|
      t.references :location, foreign_key: true, null: false
      t.references :comic, foreign_key: true, null: false
    end
  end
end
