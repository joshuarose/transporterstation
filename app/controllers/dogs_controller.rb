class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    if Dog.create(dog_params)
      flash[:success] = "Dog created"
      redirect_to dogs_path
    end
  end

  private
    def dog_params
      params.require(:dog)
        .permit(:id, :image, :name,
                :weight, :gender, :isolate, :age, :breed, :location)
    end
end
