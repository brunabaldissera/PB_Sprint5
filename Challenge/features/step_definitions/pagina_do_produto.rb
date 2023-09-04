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

Quando('aumentar a quantidade do produto') do
    @product_quantity_before = @product_page.input_quantity_product.value
    @product_page.btn_add_product.click
  end
  
  Então('deverá alterar a quantidade exibida na PDP') do
    expect(@product_page.input_quantity_product.value).to be > @product_quantity_before
  end

  Quando('adicionar o produto ao carrinho') do 
    @product_page.header.btn_cart.hover
    begin
      if @product_page.header.empty_cart.visible?
        @product_cart_quantity_before = 0
        @product_page.btn_save_to_cart.click
        @product_page.header.btn_cart.click
        @cart_page = Pages::CartPage.new  
      end
    rescue Capybara::ElementNotFound
      @product_page.header.btn_cart.click
      @cart_page = Pages::CartPage.new 
      @product_cart_quantity_before = @cart_page.label_quantity.text.to_i 
      page.go_back
      @product_page.btn_save_to_cart.click
      @product_page.header.btn_cart.click
    end    
  end
  
  Então('o produto deverá ser adicionado com a quantidade aumentada') do
    expect(@cart_page.label_quantity.text.to_i).to be > @product_cart_quantity_before
  end

  Então('o produto deverá ser adicionado ao carrinho com sucesso') do
    expect(@product_page.product_name.text).to eq(@cart_page.cart_product_name.text)
  end