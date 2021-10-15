#language: pt

@regressivo
Funcionalidade: Cadastrar novo usuario.

@cadastrar_novo_usuario
Cenario: Cadastrar usuario pessoa fisica com dados validos.
Dado que acesso o cadastro de usuario
E preencho os campos do formulario com dados validos 
Quando confirmo o cadastro
Entao o sistema deve exibir a mensagem de boas vindas