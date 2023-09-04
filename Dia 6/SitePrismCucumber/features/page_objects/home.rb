class Home < SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    element :input_search, '#autoComplete'
    element :loader, 'body > .loader'

    def search_for(product)
        btn_open_search.click
        input_search.set product
        wait_until_loader_visible
        wait_until_loader_invisible
        btn_open_search.click
    end
end