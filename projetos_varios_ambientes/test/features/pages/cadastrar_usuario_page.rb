class CadastroPage < SitePrism::Page
    set_url 'https://automacaocombatista.herokuapp.com/users/new'
    
    element :cmp_nome, '#user_name'
    element :cpm_sobrenome, '#user_lastname'
    element :cpm_email, '#user_email'
    element :cpm_endereço, '#user_address'
    element :cpm_universidade, '#user_university'
    element :cpm_profissao, '#user_profile'
    element :cpm_msg_sucesso, '#notice'
    
    def preencher_form_com_dados

        cmp_nome.set 'jonathan'
        cpm_sobrenome.set 'veiga'
        cpm_email.set '#deia-jesus@hotmail.com'
        cpm_endereço.set 'rua portugal'
        cpm_universidade.set 'faccamp'
        cpm_profissao.set 'mecanico'
        
    end

    def clicar_finalizar

        find('input[value="Criar"]').click
    end
end
