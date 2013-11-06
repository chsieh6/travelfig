class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :content

      t.timestamps
    end
  end
end
