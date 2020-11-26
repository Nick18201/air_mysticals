class AnimalsController < ApplicationController
  def index
    if params[:query].present?
      if Animal.where("location ILIKE ?", "%#{params[:query]}%") == []
        @animals = Animal.all
      else
        @animals = Animal.where("location ILIKE ?", "%#{params[:query]}%")
      end
    else
      @animals = Animal.all
    end

    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url('unicorn_logo.svg')
      }
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

# private

# def animal_params
#   params.require(:animal).permit(:name, :description, :location, :age, :price_per_day, photo: [])
# end

end
