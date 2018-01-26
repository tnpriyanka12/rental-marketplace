class PropertiesController < ApplicationController

  def home
    @properties = Property.all
    @users      = User.all
  end

  def index
    @properties = Property.all
    # binding.pry
  end

  def show
    @property = Property.find params[:id]
    @photos   = @property.photos
  end

  def new
    @property = Property.new
  end


  def create
    property = Property.new(property_params)
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      property.image_url = req["public_id"]
    end
    property.save


    Property.create property_params
    redirect_to properties_path
  end

  def edit
    @property = Property.find params[:id]
  end
  #update
  def update
    property = Property.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      property.image = req["public_id"]
    end
    property.update_attributes(property_params)
    property.save

    redirect_to property
  end

  def destroy
    Property.destroy params[:id]
    redirect_to properties_path
  end



  private
   def property_params
     params.require(:property).permit(:address, :city, :price, :property_type, :image, :description )
   end


end
