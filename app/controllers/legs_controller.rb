class LegsController < ApplicationController
  before_action :set_transport
  before_action :authenticate_organization!, only: [:new, :create]
  
  def index
    @legs = @transport.legs
    gon.legs = @transport.legs
  end

  def new
    @leg = @transport.legs.build
  end

  def create
    @leg = @transport.legs.build(leg_params)
    if @leg.save
      flash[:success] = "Leg created"
      redirect_to transport_legs_path(@transport)
    else
      flash[:error] = "Error creating leg"
      redirect_to transport_legs_path(@transport)
    end
  end

  private
    def leg_params
      params.require(:leg)
        .permit(:id, :description, :address,
                :city, :state, :zip, :transport_id)
    end

    def set_transport
      @transport = Transport.find(params[:transport_id])
    end
end
