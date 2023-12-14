#language: pt

@buscaEstabelecimento

Funcionalidade: Buscar estabelecimento
Como um usario quero consultar um estabelecimento

Cenário: Valida que o response possui o atríbuto typeOfEstablishment
  Dado que estou consultando o endpoint "comum/enumerations/VRPAT"
    Quando envio uma requisição para obter informações sobre estabelecimentos
    Então devo validar que o atributo "typeOfEstablishment" está presente na resposta
