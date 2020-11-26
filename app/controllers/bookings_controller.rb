class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @booking.animal = @animal
    @booking.renter = current_user
    @booking.total_price = @animal.price_per_day * (@booking.ending_date - @booking.beginning_date).to_i
    if @booking.save
      redirect_to dashboard_path
    else
      render "animals/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:animal_id, :beginning_date, :ending_date)
  end

end
