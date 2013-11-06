class AddPinIdToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :pin_id, :integer
  end
end
