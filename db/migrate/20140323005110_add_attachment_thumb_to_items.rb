class AddAttachmentThumbToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :thumb
    end
  end

  def self.down
    drop_attached_file :items, :thumb
  end
end
