class RemoveRatingsFromBeers < ActiveRecord::Migration[5.2]
  def change
    remove_column :beers, :ratings, :string
  end
end
