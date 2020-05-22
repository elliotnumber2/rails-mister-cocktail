class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cock_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def cock_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
