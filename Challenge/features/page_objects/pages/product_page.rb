module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :colors, '.productColor'
        element :main_image, '#mainImg'
        section :header, Sections::Header, 'header'
        section :footer, Sections::Footer, 'footer'
        element :product_description, '#Description'
        element :product_name, '#Description h1'
        element :btn_minus, '.minus'
        element :btn_add_product, '.plus'
        element :btn_add_to_cart, '[name="save_to_cart"]'
        element :btn_category, '.pages [ng-click*="category"]'
        element :input_quantity_product, 'input[name="quantity"]'
        element :btn_save_to_cart, 'button[name="save_to_cart"]'
    end
end