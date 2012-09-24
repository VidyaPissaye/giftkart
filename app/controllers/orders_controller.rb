class OrdersController < ApplicationController
  def checkout
    @order = Order.new
    @order.item = params[:item]
    if params[:item] == "Flowers"
      @order.price = 15.00
    elsif params[:item] == "Chocolates"
      @order.price = 10.00
    end
    render 'checkout'
  end

  def create
    @order = Order.new(params[:order])
    respond_to do |format|
      if @order.save
        @message = "Congratulations! You just gifted #{@order.item} to #{@order.recipient}"
        format.js { render 'order.js' }
      else
        render 'checkout'
      end
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
