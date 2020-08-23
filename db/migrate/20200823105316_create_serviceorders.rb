class CreateServiceorders < ActiveRecord::Migration[5.0]
  def change
    create_table :serviceorders do |t|
      t.integer :service_id
      t.integer :user_id
      t.string :amount
      t.boolean :paid, :default => "false"
      t.text :addinfo

      t.timestamps
    end
  end
end
