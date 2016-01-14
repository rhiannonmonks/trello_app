class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :title
      t.integer :board_id
      t.integer :ord

      t.timestamps null: false
    end
  end
end
