class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @beers = Beer.all
  end




end
