class ReservationsController < ApplicationController

  def accept
    @reservation = Booking.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to  dashboard_path
  end

  def deny
    @reservation = Booking.find(params[:id])
    @reservation.update(status: "denied")
    redirect_to  dashboard_path

  end


end
