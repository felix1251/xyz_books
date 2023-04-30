# frozen_string_literal: true

class Molecules::ExploreSectionComponent < ViewComponent::Base
    delegate :arrow_down_component, :book_card_component, 
    :box_icon_component, :help_icon_component, :pigi_bank_icon_component, to: :helpers
end
