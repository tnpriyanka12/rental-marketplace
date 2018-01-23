class UsersController < ApplicationController
  def new
  end

  def index
    @user = User.all
  end

  def create
  end

  def destroy
  end

  def show
    @user = User.find params[:id]
  end



end
