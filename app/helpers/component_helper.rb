module ComponentHelper

    # Organisms
    def promo_header_component
        render Organisms::PromoHeaderComponent.new
    end

    def navbar_component
        render Organisms::NavbarComponent.new
    end

    # Atoms
    def line_splash_component additionalCss: ""
        render Atoms::LineSplashComponent.new additionalCss: additionalCss
    end

    def main_logo_component
        render Atoms::LogoComponent.new
    end

    def search_icon_component additionalCss: ""
        render Atoms::SearchIconComponent.new additionalCss: additionalCss
    end

    def text_input_component type: "default", additionalCss: ""
        render Atoms::TextInputComponent.new type: type, additionalCss: additionalCss
    end

    def globe_icon_component
        render Atoms::GlobeIconComponent.new
    end

    def button_component btnBgColor: "indigo-500", btnShadowColor: "indigo-100" 
        render Atoms::ButtonComponent.new btnBgColor: btnBgColor, btnShadowColor: btnShadowColor
    end
end
