class AddColumnsToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :street_name, :string
    add_column :locations, :country, :string
    add_column :locations, :door_number, :string
    add_column :locations, :zipcode, :string
    add_column :locations, :plot_number, :string
    add_column :locations, :county, :string
  end
end
