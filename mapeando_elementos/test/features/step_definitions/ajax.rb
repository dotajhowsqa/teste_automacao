Quando('clico no botao') do
    @ajax = AjaxPage.new
    @ajax.load

    @ajax.clicar_botao
end
  
Entao('verifico se apareceu') do
   # @ajax.has_mensagem
    #experct(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
end