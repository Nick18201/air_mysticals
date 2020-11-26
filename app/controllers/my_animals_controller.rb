class MyAnimalsController < ApplicationController

  def new
    @my_animal = Animal.new
  end

  def create
    @my_animal = Animal.new(animal_params)
    @my_animal.owner = current_user
    if @my_animal.save
      redirect_to dashboard_path(@animal)
    else
      render :new
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      flash[:success] = 'Animal was successfully deleted.'
      redirect_to dashboard_path(@animal)
    else
      flash[:error] = 'Something went wrong'
      redirect_to dashboard_path(@animal)
    end
  end

  end

  private

  def animal_params
    params.require(:animal).permit(:name, :description, :location, :age, :price_per_day, :photo)
  end
end
