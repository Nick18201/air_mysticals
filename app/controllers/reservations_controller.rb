class ReservationsController < ApplicationController

  def accept
    @reservation.status = "accepted"
    redirect_to  dashboard_path
  end

  def deny
    @reservation.status = "refused"
    redirect_to  dashboard_path

  end

end
