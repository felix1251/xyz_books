module ComponentHelper

    # Molecules
    def main_section_component
        render Molecules::MainSectionComponent.new
    end

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

    def button_component btnBgColor: "bg-indigo-500", btnShadowColor: "shadow-indigo-100", textSize: "text-sm", text: "click me", padding: "px-8 py-3.5", additionalCss: ""
        render Atoms::ButtonComponent.new btnBgColor: btnBgColor, btnShadowColor: btnShadowColor, textSize: textSize, text: text, padding: padding, additionalCss: additionalCss
    end
end
