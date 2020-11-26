class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    # we need `animal_id` to associate dose with corresponding cocktail
    @animal = Animal.find(params[:animal_id])
    @booking.animal = @animal
    @booking.renter = current_user
    raise
    if @booking.save
      redirect_to dashboard_path
    else
      render "animals/show" #NE FONCTIONNE PAS CORRECTEMENT
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:animal_id, :beginning_date, :ending_date, :renter_id, :total_price, :status)
  end

end
