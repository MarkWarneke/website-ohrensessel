class AddAttachmentImageToFormulars < ActiveRecord::Migration
  def self.up
    change_table :formulars do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :formulars, :image
  end
end
