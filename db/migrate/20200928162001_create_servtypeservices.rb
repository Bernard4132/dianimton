class CreateServtypeservices < ActiveRecord::Migration[5.0]
  def change
    create_table :servtypeservices do |t|
      t.integer :servtype_id
      t.integer :service_id

      t.timestamps
    end
  end
end
