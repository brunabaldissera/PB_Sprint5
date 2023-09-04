Quando('acessar a página do produto') do
    # @search_results_page.products.first.name.click
    @search_results_page.access_product_page(1)
    @product_page = Pages::ProductPage.new
end
  
Quando('alterar a cor do produto') do
    @image_before = @product_page.main_image['src']
    @product_page.colors[1].click
end
  
Então('deverá alterar a imagem apresentada na PDP') do
    expect(@product_page.main_image['src']).not_to eql @image_before
end

Dado('que esteja na página de um produto existente') do
    steps %{
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
        E acessar a página do produto
    }
end
