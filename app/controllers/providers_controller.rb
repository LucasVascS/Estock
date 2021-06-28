class ProvidersController < ApplicationController
  before_action :set_cep_service

  def index
    @provider = Provider.all
    @cep = @cep_service.general
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
      redirect_to action: "index"
    else
      render :edit
    end
  end

  def new
    @provider = Provider.new
  end

  def create
    provider_params = params.require(:provider).permit(:name, :personregistration, :cpf, :cnpj, :cep, :publicplace, :complement, :district,
    :location, :phew)
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

  private

  def set_cep_service
    @cep_service = CepService.new
  end
  
end
