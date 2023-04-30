# frozen_string_literal: true

class Atoms::ClientLogoComponent < ViewComponent::Base
    def initialize logo:, text:, textColor:
        @text = text
        @logo = logo
        @textColor = textColor
    end
end
