class CreateServtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :servtypes do |t|
      t.string :name
      t.text :description
      t.string :servtypeicn

      t.timestamps
    end
  end
end
