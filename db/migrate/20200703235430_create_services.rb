class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :servtype_id
      t.integer :user_id

      t.timestamps
    end
  end
end
