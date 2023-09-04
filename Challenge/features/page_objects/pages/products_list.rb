require_relative '../sections/product_elements'
require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class ProductsList < SitePrism::Page
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        sections :products, Sections::ProductElements, 'div.categoryRight li.ng-scope'
        
        def access_product_of_list(index)
            products[index].product_img.click
        end
    end
end