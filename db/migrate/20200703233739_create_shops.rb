class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.string :shopimage
      t.integer :user_id

      t.timestamps
    end
  end
end
