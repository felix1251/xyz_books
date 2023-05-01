# frozen_string_literal: true

class Atoms::ReviewCardComponent < ViewComponent::Base
    delegate :rating_component, to: :helpers
end
