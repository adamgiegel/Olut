class BeersController < ApplicationController
  def index

    if params[:beer]
      @searched = Beer.search(params[:search], params[:id])

    else
      @beers = Beer.all
  end
end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.create(beer_params)
      redirect_to @beer
  end

  def search
     # @beer = Beer.find_by(name: params['q'])
     # @beers = Beer.all.select {|beer| beer == @beer}
     @beers = Beer.where(['name LIKE ?', "%#{params['q']}%"])
     if !@beers
       redirect_to new_beers_path
   else
     render :index
   end
   end


  private

  def beer_params
    params.require(:beer).permit(:name, :category, :abv, :info)
  end

end
