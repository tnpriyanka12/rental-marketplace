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
    if @current_user.present?
      property = Property.create property_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      property.image = req["public_id"]
    end
    property.save
    @current_user.properties << property
    redirect_to properties_path
    else
      flash[:error] = "You must be logged in to complete action"
      redirect_to login_path
    end

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
     params.require(:property).permit(:address, :city, :price, :property_type, :image, :description, :number_of_beds, :number_of_baths, :number_of_parkings, :pets_allowed, :smoking_allowed, :wifi_present, :cancellation_policy )
   end


end
