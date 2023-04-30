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
    def line_splash_component orrientation: ""
        render Atoms::LineSplashComponent.new orrientation: orrientation
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

    def button_component text: "click me", arrow: false, type: "default"
        render Atoms::ButtonComponent.new text: text, arrow: arrow, type: type
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

    def book_card_component title: "Book Title Here!", img:, type: "minimal"
        render Atoms::BookCardComponent.new title: title, img: img, type: type
    end

    def box_icon_component
        render Atoms::BoxIconComponent.new
    end

    def help_icon_component
        render Atoms::HelpIconComponent.new
    end

    def pigi_bank_icon_component
        render Atoms::PigiBankIconComponent.new
    end
end
