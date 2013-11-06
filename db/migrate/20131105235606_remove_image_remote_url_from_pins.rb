class RemoveImageRemoteUrlFromPins < ActiveRecord::Migration
  def change
    remove_column :pins, :image_remote_url, :string
  end
end
