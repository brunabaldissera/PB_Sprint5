#language: pt

@regression
@search
Funcionalidade: Busca
    COMO um cliente do site Americanas
    QUERO poder buscar por diferentes produtos
    PARA encontrar produtos do meu interesse

    Contexto: Estar na página inicial
        Dado que esteja na página inicial da Americanas
    
    @search_for_product
    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca

    @search_for_different_products
    Esquema do Cenário: Buscar por produtos existentes
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca

            Exemplos:
            |  produto        |
            | Smartphone      |
            | Livro           |
            | TV              |
            | Roupas          |
            | Eletrodoméstico |