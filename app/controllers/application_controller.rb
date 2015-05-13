class ApplicationController < ActionController::Base
  before_action :authorize

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def authorize
    #user = User.find_by(id: session[:user_id])
    #unless user

    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice:"Please log in"
    end

  end

  def authorize_admin
    user = User.find_by(id: session[:user_id])
    unless user || !user.admin
      redirect_to login_url, notice:"Please log in as admin"
    end

    puts user.user_id

  end

end