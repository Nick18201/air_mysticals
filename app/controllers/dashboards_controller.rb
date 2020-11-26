class DashboardsController < ApplicationController

  def show
    @user = current_user.username
    @reservations = current_user.reservations
    @pending_reservations = @reservations.where(status: "pending")


    @accepted_reservations = @reservations.where(status: "accepted")

    @bookings = current_user.bookings
    @accepted_bookings = @bookings.where(status: "accepted")


    @pending_bookings = @bookings.where(status: "pending")

  end

end
