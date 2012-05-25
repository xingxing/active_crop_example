class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = User.create( params[:user] )
      redirect_to crop_user_path(@user)
    else
      render :text => "error"
    end
  end

  def crop
    @user = User.find(params[:id])
  end

  def update
  end
end
