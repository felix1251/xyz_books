# frozen_string_literal: true

class Atoms::TextInputComponent < ViewComponent::Base
    delegate :search_icon_component, :arrow_down_component, to: :helpers

    def initialize type:, additionalCss:, target:
        @type = type
        @additionalCss = additionalCss
        @target = target
    end

    def input_placeholder
        case @type
        when "search"
            "Search"
        when "email"
            "Email Address"
        end
    end
end
