#language: pt

@regression
@home
Funcionalidade: Home Page
    COMO cliente do Advantage Online Shopping
    QUERO navegar na página inicial
    PARA acessar as funcionalidades do website

    Contexto: Estar na home page
        Dado que esteja na página inicial
    
    @home_page_load
    Cenário: Carregar a página
        Então a página inicial é exibida corretamente
    

    @access_categories
    Esquema do Cenário: Acessar as categorias de produtos
        Quando acessar uma categoria "<categoria>"
        Então deverá ver uma lista de resultados

        Exemplos:
        |categoria |
        |speakers  |
        |tablets   |
        |laptops   |
        |mice      |
        |headphones|
    
    @follow_us
    Esquema do Cenário: Links da seção FOLLOW US
        Quando acessa a rede social "<link>" da seção FOLLOW US
        Então é redirecionado para página correta "<page_url>"
        Exemplos:
        |link     |page_url     |
        |facebook |facebook_url |
        |twitter  |twitter_url  |
        |linkedin |linkedin_url |