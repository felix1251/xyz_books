# frozen_string_literal: true

class Molecules::MainSectionComponent < ViewComponent::Base
    delegate :button_component, to: :helpers
end
