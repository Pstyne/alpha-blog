class ApplicationController < ActionController::Base
  def require_user
    if !helpers.logged_in?
      flash[:alert] = "Please log in"
      redirect_to login_path
    end
  end
end
