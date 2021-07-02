class CepService
  include HTTParty
  base_uri 'https://viacep.com.br/ws/seu_cep/json/'

  def initialize()
    @options = {}
  end

  def general(cep:)
    self.class.get("https://viacep.com.br/ws/#{cep}/json/", @options)
  end
end