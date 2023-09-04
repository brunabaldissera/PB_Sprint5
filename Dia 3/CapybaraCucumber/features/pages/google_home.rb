class GoogleHome < BasePage

    def search_for(query)
        find("textarea[name='q']").set query
        click_button 'Pesquisa Google'
    end
    
end