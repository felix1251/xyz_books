# frozen_string_literal: true

class Atoms::ButtonComponent < ViewComponent::Base

    def initialize btnBgColor:, btnShadowColor:, textSize:, text:, padding:, additionalCss:
        @btnBgColor = btnBgColor
        @btnShadowColor = btnShadowColor
        @textSize= textSize
        @text = text
        @padding = padding
        @additionalCss = additionalCss
    end
end
