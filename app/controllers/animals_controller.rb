class AnimalsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index, :show

  def index
    @animals = Animal.all

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
end
