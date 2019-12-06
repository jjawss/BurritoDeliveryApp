class OrdersController < ApplicationController
  def index

  end

  def show
    Order.find_by({id: params[:id]})
  end

  def create
    order = Order.create({
      customer_id: session[:user_id], #???
      store_id: params[:store_id]
    })
    redirect_to "/burritos/new/#{order.id}"
  end

end