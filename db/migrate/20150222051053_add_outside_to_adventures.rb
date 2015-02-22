class AddOutsideToAdventures < ActiveRecord::Migration
  def change
    add_column :adventures, :is_outside, :boolean
  end
end
