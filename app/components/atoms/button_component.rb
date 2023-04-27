# frozen_string_literal: true

class Atoms::ButtonComponent < ViewComponent::Base

    def initialize btnBgColor:, btnShadowColor:
        @btnBgColor = btnBgColor
        @btnShadowColor = btnShadowColor
    end
end
