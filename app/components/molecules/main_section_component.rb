# frozen_string_literal: true

class Molecules::MainSectionComponent < ViewComponent::Base
    delegate :button_component, :hero_illlustration_component, :binance_logo_component, 
    :bitcoin_logo_component, :client_logo_component, :solona_logo_component, 
    :ethereum_logo_component, :tether_logo_component, :xrp_logo_component, to: :helpers
end
