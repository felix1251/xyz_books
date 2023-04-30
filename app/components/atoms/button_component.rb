# frozen_string_literal: true

class Atoms::ButtonComponent < ViewComponent::Base
    delegate :arrow_down_component, to: :helpers

    def initialize text:, arrow:, type:
        @text = text
        @arrow = arrow
        @type = type
    end
    
    def twcss
      case @type
      when "dark"
        "bg-blue-950 shadow-blue-700 text-sky-300"
      when "default"
        "bg-indigo-500 shadow-indigo-300 text-white"
      end
    end
end
