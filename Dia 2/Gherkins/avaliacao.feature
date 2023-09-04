#language: pt

@regression
@feedback
Funcionalidade: Avaliação
    COMO um cliente do site Americanas
    QUERO poder avaliar e deixar comentários sobre produtos
    PARA compartilhar minha opinião com outros compradores

    Contexto: Estar na página de um produto
        Dado que estou na página de um produto
    
    @leave_review
    Esquema do Cenário: Deixar uma avaliação e comentário
        Quando deixo uma avaliação de "<pontuação>" estrelas e escrevo um comentário
        E confirmo a avaliação
        Então minha avaliação e comentário são exibidos na página do produto

        Exemplos:
        |  pontuacao  |
        | 5           |
        | 4           |
        | 3           |
        | 2           |
        | 1           |

    @view_reviews
    Cenário: Visualizar avaliações de outros clientes
        Quando acesso as avaliações de outros clientes
        Então vejo uma lista de avaliações e comentários
        E cada avaliação exibe a pontuação, comentário e nome do avaliador