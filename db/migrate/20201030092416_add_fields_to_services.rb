class AddFieldsToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :passendgerno, :integer
    add_column :services, :autotrans, :boolean, :default => "false"
    add_column :services, :luggage, :boolean, :default => "false"
    add_column :services, :aircon, :boolean, :default => "false"
    add_column :services, :doorsno, :integer
    add_column :services, :powesteer, :boolean, :default => "false"
    add_column :services, :fueltankf, :boolean, :default => "false"
  end
end

