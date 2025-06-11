//JavaScript para buscar o endereço via CEP


  document.getElementById("cep").addEventListener("blur", function () {
    const cep = this.value.replace(/\D/g, '');

    if (cep.length !== 8) {
      alert("CEP inválido. Deve conter 8 dígitos.");
      return;
    }

    fetch(`https://viacep.com.br/ws/${cep}/json/`)
      .then(response => response.json())
      .then(data => {
        if (data.erro) {
          alert("CEP não encontrado.");
        } else {
          document.getElementById("endereco").value = data.logradouro;
          document.getElementById("bairro").value = data.bairro;
          document.getElementById("cidade").value = data.localidade;
          document.getElementById("estado").value = data.uf;
        }
      })
      .catch(() => {
        alert("Erro ao buscar CEP.");
      });

      
  });

