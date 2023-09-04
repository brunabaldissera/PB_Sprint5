# Programa de Bolsas - RealityStone - Compass

Este projeto de automação do Advantage Online Shopping foi desenvolvido durante a Sprint 5 do programa de bolsas da Compass.UOL. Ele envolveu a criação de cenários de teste com base em um mapa mental do site, utilizando Gherkin, Ruby, Cucumber, Capybara, SitePrism e Selenium. Além disso, utilizamos massa de dados estática e dinâmica (Faker) e geramos relatórios automáticos com o Cucumber.

## Preparando o ambiente para execução de testes

1. Certifique-se de ter o Ruby instalado em seu sistema. Caso não o tenha, você pode obtê-lo no site oficial [Ruby Lang](https://www.ruby-lang.org/en/documentation/installation/).
   
2. Crie uma pasta para armazenar os arquivos e abra um terminal do Git Bash a partir dessa pasta. Certifique-se de ter o Git instalado em seu computador.
   
3. Use os seguintes comandos no terminal para clonar os arquivos:

```
   git clone https://github.com/brunabaldissera/PB_Sprint5_BrunaBaldissera
```
    
- Você também pode baixar o arquivo zip e descompactar em sua pasta.

4. No terminal de comando, navegue até a pasta "./Dia 8 - Challenge/" e execute o seguinte comando para instalar as gems necessárias:

```
   bundle install
```
- Além disso, você precisará do navegador Google Chrome e do ChromeDriver na versão compatível com seu navegador.

## Executando os testes

### Todos de uma vez

- Você pode executar todos os testes simultaneamente com o comando a seguir:

```
   cucumber -p default
```

- Para abrir sem a interface gráfica, basta adicionar o argumento headless:

```
   cucumber -p default -p headless
```

### Por funcionalidade

- Também é possível executar cada um dos testes individualmente, através das tags:

@search - Pesquisa de produtos
- @search_for_product
- @search_for_different_products

@contact - Formulário de contato
- @contact_ok

@home - Página Inicial
- @home_page_load
- @access_categories
- @follow_us

@pdp - Página do produto
- @change_color_pdp
- @increase_product_quantity
- @increase_product_quantity_only_pdp
- @increase_product_quantity_validate_cart
- @add_product_to_cart_pdp

## Relatórios

 Após a execução de cada teste, um relatório será gerado e poderá ser encontrado na pasta 'reports'.


Sinta-se à vontade para usar e modificar este programa de acordo com suas necessidades. Se encontrar falhas ou tiver sugestões de melhoria, por favor, entre em contato comigo.