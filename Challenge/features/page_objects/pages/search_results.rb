require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page
        set_url '/#/search'

        section :header, Sections::Header, 'header'

        sections :products, Sections::Products, 'div.categoryRight li.ng-scope'
    
        def access_product_page(index)
            products[index].name.click
        end
    end
end