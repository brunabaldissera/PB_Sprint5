#language: pt

@regression
@product_page
Funcionalidade: Página do produto
    COMO um cliente do site Americanas
    QUERO ver informações detalhadas sobre um produto
    PARA tomar uma decisão correta de compra

    Contexto: Estar na página de um produto
        Dado que estou na página de um produto

    @view_product_details
    Cenário: Visualizar detalhes de um produto
        Quando visualizo os detalhes do produto
        Então vejo o nome, imagem, descrição, preço e avaliações do produto

    @select_product_variation
    Esquema do Cenário: Selecionar variações de produto
        Quando seleciono a opção de "<variacao>"
        Então vejo a imagem e preço atualizados conforme a variação selecionada

        Exemplos:
        | variacao     |
        | Cor: Azul    |
        | Tamanho: Grande |
        | Capacidade: 256GB |
        | Modelo: Premium |