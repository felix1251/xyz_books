# frozen_string_literal: true

class Organisms::NavbarComponent < ViewComponent::Base
    delegate :main_logo_component, :text_input_component, to: :helpers
end
