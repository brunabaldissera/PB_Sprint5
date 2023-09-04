class SearchResults < SitePrism::Page
    set_url '/#/search'

    elements :products, 'div.categoryRight li.ng-scope'
end