module Sections
    class Header < SitePrism::Section
        element :btn_open_search, '#search #menuSearch'
        element :input_search, '#autoComplete'
        element :close_search, 'img[src$="closeDark.png"]'
        element :logo, 'header  .logo'
        element :btn_search, '#menuSearch'
        element :btn_menu_user, '#menuUserLink'
        element :menu_user, '#loginMiniTitle'
        element :logged_in_username, '#menuUserLink .hi-user'
        element :btn_cart, '#shoppingCartLink'
        element :tool_tip_cart, '#toolTipCart'
        elements :tool_tip_cart_product_name, '#toolTipCart h3'
        elements :tool_tip_cart_btn_remove, '#toolTipCart .removeProduct'
        element :tool_tip_cart_btn_checkout, '#checkOutPopUp'
        element :quantity_last_product_add_in_cart, '.ng-scope .lastProduct'
        element :empty_cart, '.emptyCart'

        def click_and_input_text_for_search(text)
            btn_open_search.click
            input_search.set text
        end
    end
end