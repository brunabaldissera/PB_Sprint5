Dado('que esteja na página inicial') do
    @home = Pages::HomePage.new
    @home.load
end

Então('a página inicial é exibida corretamente') do
    expect(@home.header.visible?).to be_truthy
    expect(@home.footer.visible?).to be_truthy
    expect(@home.our_products.all_there?).to be_truthy
end

Quando('acessar uma categoria {string}') do |categoria|
    @home.our_products.public_send(categoria).click
    @products_list = Pages::ProductsList.new
end

Então('deverá ver uma lista de resultados') do
    @products_list.products.each do |element|
        expect(element.visible?).to be_truthy
    end
end

Quando('acessa a rede social {string} da seção FOLLOW US') do |link|
    follow_us = Factory::Static.static_data_two_args('footer_follow_us', link)
    @home.footer.public_send(follow_us.to_sym).click
    popup = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(popup)
end
  
Então('é redirecionado para página correta {string}') do |page_url|
    follow_us = Factory::Static.static_data_two_args('footer_follow_us', page_url)
    expect(page.current_url).to include(follow_us)
end

Quando('retornar para home através do logo') do
    @home.header.logo.click
end