# frozen_string_literal: true

class Templates::MainComponent < ViewComponent::Base
  delegate :promo_header_component, :navbar_component, :invalid_isbn_component,
  :comment_logo_component, :footer_component, to: :helpers

  def initialize(view:)
    @view = view
  end

  def router_view
    @view
  end
end
