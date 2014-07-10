class LegsController < ApplicationController
  def index
    @legs = Leg.all
  end
end
