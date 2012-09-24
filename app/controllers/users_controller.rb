class UsersController < ApplicationController

  def index
    @user = User.all

    respond_to do |format|
      format.html {render 'index'}# index.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def create
    @item = params[:user].delete(:item)
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        flash[:success] = "Congrats! Your account is created"
        format.html { render 'orders/cart' }
        format.xml { render :xml => @user }
      else
        format.html { render 'new' }
        format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def new
    @item = params[:item]
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
    render 'edit'
  end


  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html { render 'show'}
      format.xml { render :xml => @user }
    end
  end

end
