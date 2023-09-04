module Sections
    class OurProducts < SitePrism::Section
        element :speakers, '#our_products [aria-label="SpeakersCategory"]'
        element :tablets, '#our_products [aria-label="TabletsCategory"]'
        element :laptops, '#our_products [aria-label="LaptopsCategory"]'
        element :mice, '#our_products [aria-label="MiceCategory"]'
        element :headphones, '#our_products [aria-label="HeadphonesCategory"]'
    end
end