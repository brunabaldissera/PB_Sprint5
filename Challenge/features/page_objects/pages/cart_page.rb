module Pages
    class CartPage < SitePrism::Page
        set_url '/#/shoppingCart'

        element :label_quantity, '.quantityMobile .ng-binding' 
        element :cart_product_name, '.ng-scope .productName '
    end
end