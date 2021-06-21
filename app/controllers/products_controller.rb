class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params: [:id])
  end

  def edit
    @product = Product.find(params: [:id])
  end

  def update
    @product = Product.find(params: [:id])
    product_params - params.require(:product)
    if @product.save
      redirect_to action: "index"
    else
      render :edit
    end
  end

  def new
    @product = Product.new
  end

  def create
    product_params = params.require(:product)
    @product = Product.new(product_params)
    if @product.update(product_params)
      render action: "index"
    else
      render :new
    end  
  end

  def destroy
    @product = Product.find(params: [:id])
    @product.destroy

  end
end
