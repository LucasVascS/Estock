Paloma.controller('Providers', {
  new: function() {
    hide_show_fields()
  }
});

function hide_show_fields() {
  $('.cpfclass').hide();
  $('.cnpjclass').hide();

  $('.typeofpeople').change(function () {
    if ($(this).val() == "Pessoa Física") {
      $('.cpfclass').show();
      $('.cnpjclass').hide();
    } else {
      $('.cpfclass').hide();
      $('.cnpjclass').show();
    }
  });
  
};