# frozen_string_literal: true

class Molecules::QuestionSectionComponent < ViewComponent::Base
    delegate :bold_arrow_compoenent, :question_component, to: :helpers
end
