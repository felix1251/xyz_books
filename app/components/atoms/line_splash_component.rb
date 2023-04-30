# frozen_string_literal: true

class Atoms::LineSplashComponent < ViewComponent::Base

  def initialize orrientation:
    @orrientation = orrientation
  end

  def twcss
    if @orrientation == "left"
      "transform -scale-x-100"
    end
  end
end
