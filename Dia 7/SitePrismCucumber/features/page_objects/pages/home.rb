require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page
        set_url '/'
        
        section :header, Sections::Header, 'header'

        element :loader, 'body > .loader'

        def search_for(product)
            # header.btn_open_search.click
            # header.input_search.set product
            header.click_and_input_text_for_search(product)
            wait_until_loader_visible
            wait_until_loader_invisible
            header.btn_open_search.click
            header.close_search.click
        end
    end
end