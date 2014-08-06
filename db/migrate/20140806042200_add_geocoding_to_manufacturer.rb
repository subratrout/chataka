class AddGeocodingToManufacturer < ActiveRecord::Migration
  def change
    add_column :manufacturers, :latitude, :float
    add_column :manufacturers, :longitude, :float
    add_column :manufacturers, :address, :string
  end
end
