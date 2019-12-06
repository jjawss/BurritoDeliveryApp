class OrdersController < ApplicationController
  def index

  end

  def show
    Order.find_by({id: params[:id]})
  end

  def create
    order = Order.new(
      user_id: session[:user_id], #???
      store_id: params[:store_id]
    )
    order.save
    puts "customer_id: #{session[:user_id]}"
    puts "order: #{order.id}" 
    redirect_to "/burritos/new/#{order.id}"
  end

end