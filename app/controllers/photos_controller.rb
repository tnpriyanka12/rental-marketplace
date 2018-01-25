class PhotosController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end


  def index
    @property = Property.find params[:property_id]
    @photos = @property.photos

    # @photos = Pho
    # binding.pry
  end

  def show
    @property = Property.find params[:property_id]
    @photos = @property.photos


  end

end
