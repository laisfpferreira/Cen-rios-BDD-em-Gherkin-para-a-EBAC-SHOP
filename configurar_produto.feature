# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página do produto "Augusta Pullover Jacket"

  Cenário: Adicionar produto ao carrinho com todas as opções selecionadas
    Quando seleciono o tamanho "M"
    E seleciono a cor "Blue"
    E informo a quantidade 2
    E clico em "Comprar"
    Então o produto deve ser adicionado ao carrinho

  Cenário: Tentar adicionar produto ao carrinho sem selecionar a cor
    Quando seleciono o tamanho "M"
    E informo a quantidade 2
    E clico em "Comprar"
    Então deve ser exibida uma mensagem informando que a cor é obrigatória
    E o produto não deve ser adicionado ao carrinho

  Cenário: Tentar adicionar produto ao carrinho sem selecionar o tamanho
    Quando seleciono a cor "Blue"
    E informo a quantidade 2
    E clico em "Comprar"
    Então deve ser exibida uma mensagem informando que o tamanho é obrigatório
    E o produto não deve ser adicionado ao carrinho

  Esquema do Cenário: Validar o limite de quantidade por venda
    Quando seleciono o tamanho "M"
    E seleciono a cor "Blue"
    E informo a quantidade <quantidade>
    E clico em "Comprar"
    Então <resultado>

    Exemplos:
      | quantidade | resultado                                                                  |
      | 0          | deve ser exibida uma mensagem informando que a quantidade é inválida       |
      | 1          | o produto deve ser adicionado ao carrinho                                  |
      | 9          | o produto deve ser adicionado ao carrinho                                  |
      | 10         | o produto deve ser adicionado ao carrinho                                  |
      | 11         | deve ser exibida uma mensagem informando o limite de 10 produtos por venda |

    Cenário: Limpar as opções selecionadas do produto
    Quando seleciono o tamanho "M"
    E seleciono a cor "Blue"
    E clico em "Limpar"
    Então nenhum tamanho deve estar selecionado
    E nenhuma cor deve estar selecionada