# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login

  Cenário: Login com dados válidos
    Quando informo o usuário "maria@teste.com"
    E informo a senha "teste@123"
    E clico em "Login"
    Então devo ser direcionada para a tela de checkout

  Cenário: Login com e-mail inválido
    Quando informo o usuário "RUBEWSDDDFFDF@teste.com"
    E informo a senha "teste@123"
    E clico em "Login"
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"

  Cenário: Login com senha inválida
    Quando informo o usuário "maria@teste.com"
    E informo a senha "332145ggfdd"
    E clico em "Login"
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"