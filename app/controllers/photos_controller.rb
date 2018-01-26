class PhotosController < ApplicationController



  def new
      @property = Property.find params[:property_id]
      @photo = Photo.new
  end


  def index
    @property = Property.find params[:property_id]
    @photos = @property.photos
  end


  def create

    photo = Property.find params[:property_id]
    p = Photo.new

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      p.image_url = req["public_id"]
    end
    p.save
    # Photo.create photo_params
    redirect_to property_photo_path
  end



  def show
    @property = Property.find params[:property_id]
    @photos = @property.photos
  end


  def destroy
    property =  Property.find params[:property_id]
    photo = Photo.find params[:id]
    photo.destroy
    redirect_to property_photos_path
  end



  private
   def photo_params
     params.require(:photo).permit(:image)
   end
end
