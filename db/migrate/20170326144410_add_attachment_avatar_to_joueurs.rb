class AddAttachmentAvatarToJoueurs < ActiveRecord::Migration
  def self.up
    change_table :joueurs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :joueurs, :avatar
  end
end
