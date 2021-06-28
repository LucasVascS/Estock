class CepService
  include HTTParty
  base_uri 'https://viacep.com.br/ws/seu_cep/json/'

  def initialize()
    @options = {}
  end

  def general
    self.class.get('https://viacep.com.br/ws/60860690/json/', @options)
  end
end