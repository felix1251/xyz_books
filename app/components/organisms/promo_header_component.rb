# frozen_string_literal: true

class Organisms::PromoHeaderComponent < ViewComponent::Base
    delegate :line_splash_component, to: :helpers
end
