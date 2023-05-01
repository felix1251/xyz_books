# frozen_string_literal: true

class Atoms::LogoComponent < ViewComponent::Base

    def initialize size:
        @size = size
    end

    def logo_size
        case @size
        when "sm"
            "h-14"
        when "md"
            "h-20"
        end
    end
end
