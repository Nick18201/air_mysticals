class DashboardsController < ApplicationController

  def show
    @user = current_user.username
    @reservations = current_user.reservations
  end

end
