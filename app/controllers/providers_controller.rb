class ProvidersController < ApplicationController

  def index
    @provider = Provider.all
  end

  def show
    @provider = Provider.find(params: [:id])

  end

  def edit
    @provider = Provider.find(params: [:id])
  end

  def update
    @provider = Provider.find(params: [:id])
    provider_params = params.require(:provider)
    if @provider.update(provider_params)
      redirect_to action: "inde"
    else
      render :edit
    end
  end

  def new
    @provider = Provider.new
  end

  def create
    provider_params = params.require(:provider)
    @provider = Provider.new(provider_params)
    
    if @provider.save
      redirect_to action: "index"
    else
      render :new
    end

  end

  def destroy
    @provider = Provider.find(params: [:id])
    @provider.destroy
  end
  
end
