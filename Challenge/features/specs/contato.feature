#language: pt

@regression
@contact
Funcionalidade: Contato
    COMO um usuário do Ecommerce AdvantageOnlineShopping
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na home
        Dado que esteja na home

    @contact_ok
    Cenário: Entrar em contato pelo formulário HomePage
        Quando entrar em contato pelo formulário da home
        Então deverá apresentar um modal de mensagem enviada
