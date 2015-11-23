class AddAttachmentImageToArrangements < ActiveRecord::Migration
  def self.up
    change_table :arrangements do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :arrangements, :image
  end
end