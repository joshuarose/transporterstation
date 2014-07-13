class DogsController < ApplicationController
  before_action :set_transport
  before_action :authenticate_organization!, only: [:new, :create]

  def index
    @dogs = @transport.dogs
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = @transport.dogs.build
  end

  def create
    @dog = @transport.dogs.build(dog_params)
    if @dog.save
      flash[:success] = "Dog created"
      redirect_to transport_dogs_path
    else
      flash[:error] = "Error saving dog"
      redirect_to transport_dogs_path
    end
  end

  private
    def dog_params
      params.require(:dog)
        .permit(:id, :image, :name,
                :weight, :gender, :isolate, :age, :breed, :location, :transport_id)
    end
    def set_transport
      @transport = Transport.find(params[:transport_id])
    end
end
