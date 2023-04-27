# frozen_string_literal: true

class Atoms::TextInputComponent < ViewComponent::Base
    delegate :search_icon_component, to: :helpers

    def initialize type:
        @type = type
    end
end
