class PlacesController < ApplicationController
  def index
    @places = Place.all
    @place = Place.new
  end

  def show
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address, :description, :image, :rating)
  end

  # BONUS
  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.save
    redirect_to @place
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
    redirect_to @place
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end

  # LIKES
  def like
    @place = Place.find(params[:id])
    @place.liked!
    redirect_to @place
  end
end
