class RemoveContentFromDiary < ActiveRecord::Migration
  def change
  	remove_column :diaries, :content, :string
  end
end
