class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :current_user

  def record_not_found
    render "public/404", status: 404, layout: false
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
