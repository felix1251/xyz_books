# frozen_string_literal: true

class Molecules::ExploreSectionComponent < ViewComponent::Base
    delegate :arrow_down_component, :book_card_component, to: :helpers
end
