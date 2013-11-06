class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :descriptions

      t.timestamps
    end
  end
end
