class RemoveImageFromPins < ActiveRecord::Migration
  def change
    drop_attached_file :pins, :image
  end
end
