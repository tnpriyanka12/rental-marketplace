class UsersController < ApplicationController
  def new
     @user = User.new
  end

  def index
    @user = User.all
  end

  def create
    user = User.new(user_params)
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      user.profile_pic = req["public_id"]
      # raise 'hell'
    end
    user.save
    redirect_to user
    
    # user = User.create user_params
    # if user.persisted?
    #   # user successfully created, redirect to profile page for this user
    #   session[:user_id] = user.id
    #   redirect_to user_path user
    # else
    #   # error creating user (probably a validation error)
    #   flash[:errors] = user.errors.full_messages
    #   redirect_to new_user_path
    # end
  end


  def edit
    @user = User.find params[:id]
  end


  def update

  end


  def destroy
  end

  def show
    @user = User.find params[:id]
  end



  private
   def user_params
     params.require(:user).permit(:username, :full_name, :email, :description, :password, :password_confirmation)
   end


end
