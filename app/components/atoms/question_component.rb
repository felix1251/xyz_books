# frozen_string_literal: true

class Atoms::QuestionComponent < ViewComponent::Base
    delegate :bold_arrow_compoenent, to: :helpers

    def initialize title:, details:, close:
        @title = title
        @details = details
        @close = close
    end
end
