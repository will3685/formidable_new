class SalonsController < ApplicationController
  def hairs
    @hair = Category.find(3).salons
  end
end
