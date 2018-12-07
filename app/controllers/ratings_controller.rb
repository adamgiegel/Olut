class RatingsController < ApplicationController
def index
@ratings = Rating.all
end

def new
@rating = Rating.new
@beer = Beer.all
end

def create
@beer = Beer.find(rating_params[:beer_id])
Rating.create(rating_params)
redirect_to beer_path(@beer)
end

private

def rating_params
  params.require(:rating).permit(:beer_id, :user_id, :ratings)
end

end
