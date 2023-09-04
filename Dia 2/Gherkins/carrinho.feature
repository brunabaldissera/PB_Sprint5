#language: pt

@regression
@cart
Funcionalidade: Adicionar produto ao carrinho
    COMO um cliente do site Americanas
    QUERO adicionar produtos ao carrinho
    PARA que eu possa finalizar a compra posteriormente

    Contexto: Estar na página de um produto
        Dado que estou na página de um produto
    
    @add_sigle_product
    Cenário: Adicionar um produto ao carrinho
        Quando clico no botão "Adicionar ao carrinho"
        Então vejo uma mensagem de confirmação
        E o ícone do carrinho no canto superior direito mostra a quantidade de itens atualizada

    @add_multiple_products
    Esquema do Cenário: Adicionar vários produtos ao carrinho
        Quando adiciono o produto "<produto1>" ao carrinho
        E adiciono o produto "<produto2>" ao carrinho
        E adiciono o produto "<produto3>" ao carrinho
        Então vejo uma mensagem de confirmação
        E o ícone do carrinho no canto superior direito mostra a quantidade de itens atualizada
        
        Exemplos:
        | produto1     | produto2     | produto3     |
        | Smartphone   | Livro        | TV           |
        | Headphones   | Roupas       | Eletrodoméstico |