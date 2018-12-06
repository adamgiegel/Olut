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
    if@beer.valid?
      redirect_to @beer
    else
      flash[:errors] = @beer.error.full_messages
      redirect to new_beer_path
    end
  end

  def search
     # @beer = Beer.find_by(name: params['q'])
     # @beers = Beer.all.select {|beer| beer == @beer}
     @beers = Beer.where(['name LIKE ?', "%#{params['q']}%"])
     render :index
   end


  private

  def beer_params
    params.require(:beer).permit(:name, :category, :abv, :beer)
  end

end
