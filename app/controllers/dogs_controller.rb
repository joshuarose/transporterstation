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
    flash[:success] = "Dog created"
    redirect_to dogs_path
  end

  private
    def dog_params
      params.require(:dog).permit(:id)
    end
end
