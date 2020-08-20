class CreateGenservices < ActiveRecord::Migration[5.0]
  def change
    create_table :genservices do |t|
      t.string :name
      t.string :email
      t.string :phonenumber
      t.text :businessdets
      t.string :servicetype

      t.timestamps
    end
  end
end
