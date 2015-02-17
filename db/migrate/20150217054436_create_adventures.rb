class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string "destination"
      t.float "duration"
      t.float "price"



      t.timestamps null: false
    end
  end
end
