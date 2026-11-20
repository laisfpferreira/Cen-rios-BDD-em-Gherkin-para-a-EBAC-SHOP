# language: pt

Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar a minha compra

  Contexto:
    Dado que estou na tela de checkout

  Cenário: Finalizar compra com todos os campos obrigatórios preenchidos
    Quando preencho todos os campos obrigatórios com dados válidos
    E clico em "Finalizar compra"
    Então deve ser exibida uma mensagem de compra finalizada

  Esquema do Cenário: Tentar finalizar compra com e-mail em formato inválido
    Quando preencho todos os campos obrigatórios com dados válidos
    E informo o e-mail "<email>"
    E clico em "Finalizar compra"
    Então deve ser exibida uma mensagem de erro informando que o e-mail é inválido

    Exemplos:
      | email            |
      | mariateste.com   |
      | maria@           |
      | @teste.com       |
      | maria @teste.com |

  Cenário: Tentar finalizar compra com campos obrigatórios vazios
    Quando não preencho os campos obrigatórios
    E clico em "Finalizar compra"
    Então deve ser exibida uma mensagem de alerta informando que os campos são obrigatórios