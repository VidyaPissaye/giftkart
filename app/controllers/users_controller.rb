class UsersController < ApplicationController

#  def index
 #   @user = User.all
  #end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to GiftKart!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

end
