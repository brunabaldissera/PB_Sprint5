#language: pt

@regression
@checkout
Funcionalidade: Processo de checkout
    COMO um cliente do site Americanas
    QUERO concluir a compra de maneira eficiente
    PARA receber meus produtos no endereço desejado

    Contexto: Ter produtos no carrinho
        Dado que tenho itens no meu carrinho
    
    @fill_shipping_info
    Cenário: Preencher informações de envio e pagamento
        Quando preencho minhas informações de envio
        E seleciono um método de pagamento válido
        E confirmo a compra
        Então vejo um resumo do pedido com informações corretas
        E recebo um e-mail de confirmação com detalhes da compra

    @apply_discount
    Esquema do Cenário: Aplicar código de desconto
        Dado que tenho itens no carrinho
        Quando vou para a página do carrinho
        E insiro o código de desconto "<código>"
        E aplico o código
        Então vejo o desconto aplicado ao total
        E o total recalculado com o desconto

        Exemplos:
        |  codigo     |
        | SUMMER2023  |
        | SALE10      |
        | DISCOUNT50  |