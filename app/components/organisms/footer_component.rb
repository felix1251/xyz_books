# frozen_string_literal: true

class Organisms::FooterComponent < ViewComponent::Base
    delegate :main_logo_component, :text_input_component, to: :helpers
end
