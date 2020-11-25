class DashboardsController < ApplicationController

  def show
    @user = current_user.username
    @reservations = current_user.reservations
    @pending_reservations = @reservations.where(status: "pending")
    @accepted_reservations = @reservations.where(status: "accepted")
  end

end
