class MyAnimalsController < ApplicationController
  before_action :set_animal, only: [:edit, :update, :destroy]

  def new
    @my_animal = Animal.new
  end

  def create
    @my_animal = Animal.new(animal_params)
    @my_animal.owner = current_user

    if @my_animal.save
      redirect_to dashboard_path(@my_animal)
    else
      render :new
    end
  end

  def destroy
    @bookings = current_user.bookings
    if @my_animal.destroy
      flash[:success] = 'Animal was successfully deleted.'

      @bookings.where(status: "denied")
      redirect_to dashboard_path(@my_animal)
    else
      flash[:error] = 'Something went wrong'
      redirect_to dashboard_path(@my_animal)
    end
  end

  def edit
  end

  def update
    @my_animal.update(animal_params)

    redirect_to animal_path(@my_animal)
  end

  private

  def set_animal
    @my_animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :location, :age, :price_per_day, :photo)
  end
end
