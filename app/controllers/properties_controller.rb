class PropertiesController < ApplicationController

  def home
    @properties = Property.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
