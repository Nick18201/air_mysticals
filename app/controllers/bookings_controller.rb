class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @booking.animal = @animal
    @booking.renter = current_user
    # View in params make it look like beginning date is equal to a range but it's not actually the case in the console
    if @booking.ending_date.nil? || @booking.beginning_date.nil?
      render "animals/show"
    else
      @booking.total_price = @animal.price_per_day * (1+(@booking.ending_date - @booking.beginning_date).to_i)
    end
    if @booking.save
      redirect_to dashboard_path
    else
      render "animals/show"
    end
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.update(status: "denied")
    redirect_to  dashboard_path
  end
  private

  def booking_params
    params.require(:booking).permit(:animal_id, :beginning_date, :ending_date)
  end
end
