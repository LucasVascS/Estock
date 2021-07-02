Paloma.controller('Providers', {
  new: function() {
    hide_show_fields()
    get_cep_form()
  }
});

function hide_show_fields() {
  $('.cpffield').hide();
  $('.cnpjfield').hide();

  $('.typeofpeople').change(function () {
    if ($(this).val() == "phisical_person") {
      $('.cpffield').show();
      $('.cnpjfield').hide();
    } else if ($(this).val() == "juridic_person")  {
      $('.cpffield').hide();
      $('.cnpjfield').show();
    } else {
      $('.cpffield').hide();
      $('.cnpjfield').hide();
    }
  });
  
};

function get_cep_form () {
  $('.getcep').change(function () {
    cep = $(this).val()
    if (cep) {
      $.ajax({url: `https://viacep.com.br/ws/${cep}/json/`, success: function(result) {
      $('#provider_publicplace').val(result['logradouro']);
      $('#provider_complement').val(result['complemento']);
      $('#provider_district').val(result['bairro']);
      $('#provider_location').val(result['localidade']);
      $('#provider_phew').val(result['uf']);
    }});
    } else {
      $(".resetfields").val('')
    }
    
  })
}


