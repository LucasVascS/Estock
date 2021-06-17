class ProductsController < ApplicationController

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
    if @product.save
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
