class RemoveFieldNameFromBeers < ActiveRecord::Migration[5.2]
  def change
    remove_column :beers, :field_name, :ratings
  end
end
