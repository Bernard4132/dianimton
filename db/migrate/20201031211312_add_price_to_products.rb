class AddPriceToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :minprice, :integer
    add_column :products, :maxprice, :integer
    add_column :products, :moq, :string
    add_column :products, :shippinglocation, :string
  end
end
