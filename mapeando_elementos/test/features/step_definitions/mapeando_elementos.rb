Quando('preencher o formulario.') do
    @mapeando = MapeandoElementosPage.new
    @mapeando.load
    @mapeando.preencher
    #home.load
    #home.preencher
    
    sleep(5)
end