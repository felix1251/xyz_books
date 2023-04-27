module ComponentHelper

    # Organisms
    def promo_header_component
        render Organisms::PromoHeaderComponent.new
    end

    # Atoms
    def line_splash_component additonalCss: ""
        render Atoms::LineSplashComponent.new additonalCss: additonalCss
    end
end
