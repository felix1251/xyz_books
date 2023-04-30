# frozen_string_literal: true

class Molecules::ReviewSectionComponent < ViewComponent::Base
    delegate :client_logo_component, :binance_logo_component, to: :helpers
end
