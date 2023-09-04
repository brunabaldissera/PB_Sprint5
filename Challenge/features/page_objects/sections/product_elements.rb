module Sections
    class ProductElements < SitePrism::Section
        element :product_img, '.imgProduct'
        element :product_name, '.productName'
        element :product_price, '.productPrice'
    end
end