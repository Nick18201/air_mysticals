class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
    @booking = Booking.new
  end

private

# def animal_params
#   params.require(:animal).permit(:name, :description, :location, :age, :price_per_day, photo: [])
# end

end
