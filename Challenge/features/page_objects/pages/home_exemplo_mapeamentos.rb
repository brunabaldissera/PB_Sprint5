class FooterExemploMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="follow_facebook"]'
    element :img_twitter, 'img[name="follow_twitter"]'
end

class ProductsExemploMapeamentos < SitePrism::Section
    element :name, 'a.productName'
    element :price, 'a.productPrice'
end

class HomeExemploMapeamentos < SitePrism::Page

    sections :products, ProductsExemploMapeamentos, '.categoryRight li.ng-scope'

    def click_third_product_price
        products[2].price.click
    end
    
    def click_last_product
        products.last.click
    end
end