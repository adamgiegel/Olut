class BeerLocationsController < ApplicationController

  def index
    @beer_locations = BeerLocation.all
  end


end
