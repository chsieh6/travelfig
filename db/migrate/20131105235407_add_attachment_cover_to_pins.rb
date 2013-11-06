class AddAttachmentCoverToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :cover
    end
  end

  def self.down
    drop_attached_file :pins, :cover
  end
end
