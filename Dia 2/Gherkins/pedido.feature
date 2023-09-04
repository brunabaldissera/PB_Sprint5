#language: pt

@regression
@order_status
Funcionalidade: Verificar status do pedido
    COMO um cliente do site Americanas
    QUERO poder verificar o status do meu pedido
    PARA saber em que estágio o meu pedido se encontra

    Contexto: Ter um número de pedido válido
        Dado que tenho um número de pedido válido

    @check_order_status
    Cenário: Verificar status do meu pedido
        Quando verifico o status do meu pedido com o número de pedido
        Então vejo informações detalhadas sobre o status atual do pedido

    @view_multiple_order_statuses
    Esquema do Cenário: Verificar status de múltiplos pedidos
        Quando verifico o status de diferentes pedidos com os números de pedido
        Então vejo informações sobre o status atual de cada pedido

        Exemplos:
        | numero_pedido |
        | 123456        |
        | 789012        |
        | 345678        |