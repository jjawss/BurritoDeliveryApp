class BurritosController < ApplicationController
  def index
    @burritos = Burrito.all
  end

    def create
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