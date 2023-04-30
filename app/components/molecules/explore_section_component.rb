# frozen_string_literal: true

class Molecules::ExploreSectionComponent < ViewComponent::Base
    delegate :arrow_down_component, to: :helpers
end
