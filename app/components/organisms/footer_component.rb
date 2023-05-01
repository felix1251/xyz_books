# frozen_string_literal: true

class Organisms::FooterComponent < ViewComponent::Base
    delegate :main_logo_component, :text_input_component, :linkin_icon_component, :twitter_icon_component,
    :get_current_year, :facebook_icon_component, :social_icon_conponent, to: :helpers
end
