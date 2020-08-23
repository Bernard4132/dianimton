class CreateProductorders < ActiveRecord::Migration[5.0]
  def change
    create_table :productorders do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :amount
      t.boolean :paid, :default => "false"
      t.text :addinfo

      t.timestamps
    end
  end
end
