class TagsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end


  def index
    @property = Property.find params[:property_id]
  end

  def show
    @property = Property.find params[:property_id]
    @tags = @property.tags
  end

end
