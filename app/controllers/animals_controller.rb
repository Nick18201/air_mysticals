class AnimalsController < ApplicationController

  def show
    @animal = Animal.find(params[:id])
  end
end

private

def animal_params
  params.require(:animal).permit(:name, :description, :location, :age, :price_per_day, :photo)
end
