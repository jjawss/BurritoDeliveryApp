class BurritosController < ApplicationController
  def index
    @burritos = Burrito.all
  end

    def create
      Order.find_by({customer_id: params[:orders_id]})
      Burrito.create({
        style: params[:style],
        rice: params[:rice],
        beans: params[:beans],
        meat: params[:meat],
        veggies: params[:veggies],
        salsa: params[:salsa],
        sour_cream: params[:sour_cream],
        corn: params[:corn],
        lettuce: params[:lettuce],
        cheese: params[:cheese]
      })
      redirect_to action:'index'
      # if params[:next_action] == "Cart"
      #   redirect_to '/orders/params[:id]' #how do I get to a specific transaction id from here??
      # elsif( params[:next_action] == "+ Burrito" )
      #   redirect_to '/burritos/new/:orders_id'
      # end
  end

  def new
    @stores = Store.all
  end

  def show
  end

  def update
    Store.find_by(id: Store.id)
    @burrito = Burrito.find_by({id: params[:id]})
    @burrito.update({
      style: params[:style],
      rice: params[:rice],
      beans: params[:beans],
      meat: params[:meat],
      veggies: params[:veggies],
      salsa: params[:salsa],
      sour_cream: params[:sour_cream],
      corn: params[:corn],
      lettuce: params[:lettuce],
      cheese: params[:cheese]
    })
    redirect_to action:'index'
  end

  def edit
    @burrito = Burrito.find_by({id: params[:id]})
  end


end