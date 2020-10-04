class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :objpicture
      t.integer :product_id
      t.integer :service_id

      t.timestamps
    end
  end
end
