# frozen_string_literal: true

class Atoms::BookCardComponent < ViewComponent::Base
    delegate :arrow_down_component, to: :helpers

    def initialize title:, img:, type:
        @title= title
        @img = img
        @type= type
    end
end
