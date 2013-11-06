class AddPinIndexToPhotoAndDiary < ActiveRecord::Migration
  def change
    add_index :photos, :pin_id
    add_index :diaries, :pin_id
  end
end
