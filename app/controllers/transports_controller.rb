class TransportsController < ApplicationController
  before_action :authenticate_organization!, only: [:new, :create]

  def index
    @transports = Transport.all
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.create(transport_params)
    @transport.start_time = Time.zone.parse(@transport.start_time.to_s(:long))
    if @transport.save
      flash[:success] = "Transport created"
      redirect_to transports_path
    end
  end

  def transport_params
    params.require(:transport)
      .permit(:id, :run_date, :start_time)
  end
end
