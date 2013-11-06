class AddCoverRemoteUrlFromPins < ActiveRecord::Migration
  def change
    add_column :pins, :cover_remote_url, :string
  end
end
