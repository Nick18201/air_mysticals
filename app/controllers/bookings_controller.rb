class BookingsController < ApplicationController

  def cancel
    @booking = Booking.find(params[:id])
    @reservation.update(status: "denied")
    redirect_to  dashboard_path

  end
end
