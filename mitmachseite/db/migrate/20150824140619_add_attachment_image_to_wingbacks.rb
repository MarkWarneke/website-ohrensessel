class AddAttachmentImageToWingbacks < ActiveRecord::Migration
  def self.up
    change_table :wingbacks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :wingbacks, :image
  end
end
