module Sections
    class Footer < SitePrism::Section
        element :btn_facebook, '[name = follow_facebook]'
        element :btn_twitter, '[name = follow_twitter]'
        element :btn_linkedin, '[name = follow_linkedin]'
    end
end