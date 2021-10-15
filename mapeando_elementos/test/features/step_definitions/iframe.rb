Quando('Preencher os campos') do

    @pagina_iframe = PaginaPadrao.new
    @pagina_iframe.load

    @pagina_iframe.preencher_campos do |iframe|
        iframe.nome.set 'jonathan'
        iframe.ultimo_nome.set 'veiga'
    end

    sleep(5)
end