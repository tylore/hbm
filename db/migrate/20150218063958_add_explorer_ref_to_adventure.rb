class AddExplorerRefToAdventure < ActiveRecord::Migration
  def change
    add_reference :adventures, :explorer, index: true
    add_foreign_key :adventures, :explorers
  end
end
