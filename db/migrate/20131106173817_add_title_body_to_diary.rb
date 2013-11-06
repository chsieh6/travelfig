class AddTitleBodyToDiary < ActiveRecord::Migration
  def change
    add_column :diaries, :title, :string
    add_column :diaries, :body, :text
  end
end
