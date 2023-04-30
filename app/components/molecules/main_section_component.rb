# frozen_string_literal: true

class Molecules::MainSectionComponent < ViewComponent::Base
    delegate :button_component, :hero_illlustration_component, :binance_logo_component, to: :helpers
end
