class CreateComics < ActiveRecord::Migration[5.1]
  def change
    create_table :comics do |t|
      t.string :title, null: false
      t.text :summary, null: false
    end
  end
end
