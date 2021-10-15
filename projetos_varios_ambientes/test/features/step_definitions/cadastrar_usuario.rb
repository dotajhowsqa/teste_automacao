
Dado('que acesso o cadastro de usuario') do
    @cadastro_pag = CadastroPage.new
    @cadastro_pag.load
end
  
E ('preencho os campos do formulario com dados validos') do
    @cadastro_pag.preencher_form_com_dados
end
  
Quando('confirmo o cadastro') do
    @cadastro_pag.clicar_finalizar


end
  
Entao('o sistema deve exibir a mensagem de boas vindas') do
    @cadastro_pag.wait_until_cpm_msg_sucesso_visible
    expect(@cadastro_pag).to have_content 'Usuário Criado com sucesso'

end
