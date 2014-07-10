class LegsController < ApplicationController
  def index
    @legs = Leg.all
    gon.legs = @legs
  end

  def new
    @leg = Leg.new
  end

  def create
    if Leg.create(leg_params)
      flash[:success] = "Leg created"
      redirect_to legs_path
    end
  end

  private
    def leg_params
      params.require(:leg)
        .permit(:id, :description, :address,
                :city, :state, :zip)
    end
end
