module ComponentHelper

    # Molecules
    def main_section_component
        render Molecules::MainSectionComponent.new
    end

    def explore_section_component
        render Molecules::ExploreSectionComponent.new
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

    def button_component btnBgColor: "bg-indigo-500", btnShadowColor: "shadow-indigo-100", 
        textSize: "text-sm", text: "click me", padding: "px-8 py-3.5", additionalCss: "", 
        textColor: "text-white", arrow: false

        render Atoms::ButtonComponent.new btnBgColor: btnBgColor, btnShadowColor: btnShadowColor, textSize: textSize, text: text, padding: padding, additionalCss: additionalCss, textColor: textColor, arrow: arrow
    end

    def hero_illlustration_component
        render Atoms::HeroIllustrationComponent.new
    end

    def arrow_down_component
        render Atoms::ArrowDownComponent.new
    end

    def client_logo_component text: "Logo Title", logo:
        render Atoms::ClientLogoComponent.new text: text, logo: logo
    end

    def binance_logo_component
        render Atoms::BinanceLogoComponent.new
    end

    def bitcoin_logo_component
        render Atoms::BitcoinLogoComponent.new
    end

    def solona_logo_component
        render Atoms::SolonaLogoComponent.new
    end

    def ethereum_logo_component
        render Atoms::EthereumLogoComponent.new
    end

    def tether_logo_component
        render Atoms::TetherLogoComponent.new
    end
    
    def xrp_logo_component
        render Atoms::XrpLogoComponent.new
    end
end
