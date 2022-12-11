class GuestSessionsController < ApplicationController
  def create_general
    user = User.find_by(email: 'test@example.com', role: 'true')
    log_in(user)
    redirect_to user_path(user)
  end

  def create_admin
    user = User.find_by(email: 'test_admin@example.com', role: 'true')
    log_in(user)
    redirect_to user_path(user)
  end

end
