module ComponentHelper

    # Templates
    def main_layout_component view:
        render Templates::MainComponent.new view: view
    end

    # Molecules
    def main_section_component
        render Molecules::MainSectionComponent.new
    end

    def explore_section_component
        render Molecules::ExploreSectionComponent.new
    end

    def review_section_component
        render Molecules::ReviewSectionComponent.new
    end

    def question_section_component
        render Molecules::QuestionSectionComponent.new
    end

    # Organisms
    def promo_header_component
        render Organisms::PromoHeaderComponent.new
    end

    def navbar_component
        render Organisms::NavbarComponent.new
    end

    def footer_component
        render Organisms::FooterComponent.new
    end

    # Atoms
    def line_splash_component orrientation: ""
        render Atoms::LineSplashComponent.new orrientation: orrientation
    end

    def main_logo_component size: "sm"
        render Atoms::LogoComponent.new size: size
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

    def client_logo_component text: "Logo Title", logo:, textColor: "text-white"
        render Atoms::ClientLogoComponent.new text: text, logo: logo, textColor: textColor
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

    def comment_logo_component
        render Atoms::CommentLogoComponent.new
    end

    def review_card_component
        render Atoms::ReviewCardComponent.new
    end

    def rating_component
        render Atoms::RatingComponent.new
    end

    def bold_arrow_compoenent twcss: "rotate-0"
        render Atoms::BoldArrowDownComponent.new twcss: twcss
    end

    def question_component title:, details:, close: true
        render Atoms::QuestionComponent.new title: title, details: details, close: close
    end

    def facebook_icon_component
        render Atoms::FacebookIconComponent.new
    end

    def social_icon_conponent icon:
        render Atoms::SocialIconComponent.new icon: icon
    end

    def linkin_icon_component
       render Atoms::LinkinIconComponent.new
    end

    def twitter_icon_component
        render Atoms::TwitterIconComponent.new
    end
end
