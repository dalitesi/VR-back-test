require_relative '../support/api_helper'

  Dado('que estou consultando o endpoint {string}') do |string|
    #chamada da url presente no arquivo helper
    $uri_base = ApiHelper.uri_base
  end
  
  Quando('envio uma requisição para obter informações sobre estabelecimentos') do
     #variavel recebe o response
   $response = HTTParty.get($uri_base)
  end
  
  Então('devo validar que o atributo {string} está presente na resposta') do |string|
    establishments = $response['typeOfEstablishment']
    #este bloco condicional verifica se a variável establishments existe e se ela contém pelo menos um elemento
      if establishments && establishments.any?
              random_establishment = establishments.sample #verifica se a lista de estabelecimentos existe e não está vazia
        puts "Estabelecimento Aleatório: #{random_establishment['key']}" # imprimindo no console uma mensagem que inclui a chave 'key'
      else #verifica se a lista de estabelecimentos estiver vazia, será impresso no console uma mensagem informando que nenhum estabelecimento foi encontrado.
        puts "Nenhum estabelecimento encontrado."
      end
  end
  