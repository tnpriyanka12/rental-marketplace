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
    # raise 'hell'

  end

  def new
    @property = Property.new
  end

  def edit
    @property = Property.find params[:id]
  end

  def update
    property = Property.find params[:id]
    property.update property_params
    redirect_to property
  end

  def create
    Property.create property_params
    redirect_to properties_path
  end

  def destroy
    Property.destroy params[:id]
    redirect_to properties_path
  end
end
