class AddAttachmentAvatarToExplorers < ActiveRecord::Migration
  def self.up
    change_table :explorers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :explorers, :avatar
  end
end
