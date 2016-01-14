class CreateCardAssignments < ActiveRecord::Migration
  def change
    create_table :card_assignments do |t|
      t.integer :card_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
