class CreateLocationComics < ActiveRecord::Migration[5.1]
  def change
    create_table :location_comics do |t|

      t.timestamps
    end
  end
end
