class AddPinIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :pin_id, :integer
  end
end
