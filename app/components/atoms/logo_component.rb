# frozen_string_literal: true

class Atoms::LogoComponent < ViewComponent::Base

    def initialize size:
        @size = size
    end

    def logo_size
        case @size
        when "sm"
            "h-12 md:h-14"
        when "md"
            "h-14 md:h-20"
        end
    end
end
