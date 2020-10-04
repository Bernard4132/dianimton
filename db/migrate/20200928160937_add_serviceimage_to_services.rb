class AddServiceimageToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :serviceimage, :string
  end
end
