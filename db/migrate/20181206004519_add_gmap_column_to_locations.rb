class AddGmapColumnToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :gmap, :string
  end
end
