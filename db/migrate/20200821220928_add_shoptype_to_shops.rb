class AddShoptypeToShops < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :shoptype, :string
  end
end
