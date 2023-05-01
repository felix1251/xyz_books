# frozen_string_literal: true

class Organisms::NavbarComponent < ViewComponent::Base
    delegate :main_logo_component, :text_input_component, :globe_icon_component, 
    :button_component, :search_icon_component, :hamburger_icon_component, to: :helpers
end
