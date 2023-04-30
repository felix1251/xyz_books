# frozen_string_literal: true

class Atoms::ButtonComponent < ViewComponent::Base
    delegate :arrow_down_component, to: :helpers

    def initialize btnBgColor:, btnShadowColor:, textSize:, text:, padding:, additionalCss:, textColor:, arrow:
        @btnBgColor = btnBgColor
        @btnShadowColor = btnShadowColor
        @textSize= textSize
        @text = text
        @padding = padding
        @additionalCss = additionalCss
        @textColor = textColor
        @arrow = arrow
    end
end
