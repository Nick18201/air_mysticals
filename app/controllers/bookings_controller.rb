class BookingsController < ApplicationController

  def cancel
    @booking = Booking.find(params[:id])
    @booking.update(status: "denied")
    redirect_to  dashboard_path

  end
end
