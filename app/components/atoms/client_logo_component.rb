# frozen_string_literal: true

class Atoms::ClientLogoComponent < ViewComponent::Base
    def initialize logo:, text:
        @text = text
        @logo = logo
    end
end
