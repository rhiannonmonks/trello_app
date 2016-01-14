class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :card_id
      t.boolean :done
      t.text :title

      t.timestamps null: false
    end
  end
end
