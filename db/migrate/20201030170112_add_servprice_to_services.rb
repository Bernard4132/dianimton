class AddServpriceToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :price, :integer
  end
end
