class AddTagsToAdventures < ActiveRecord::Migration
  def change
    add_column :adventures, :is_aquatic, :boolean
    add_column :adventures, :is_sturdy_shoes, :boolean
    add_column :adventures, :is_inside, :boolean
    add_column :adventures, :is_artful, :boolean
    add_column :adventures, :is_full_day, :boolean
  end
end
