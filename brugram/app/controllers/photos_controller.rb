class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new photo_params
    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  def show
    @photo = Photo.includes(:hashtags).find params[:id]
  end

  def edit
    @photo = Photo.find params[:id]
  end

  def update
    @photo = Photo.find params[:id]
    if @photo.update photo_params
      redirect_to @photo
    else
      render :edit
    end
  end

  def destroy
    Photo.delete params[:id]
    redirect_to photos_path
  end

  private
    def photo_params
      params.require(:photo).permit(:caption, :image)
    end
end
