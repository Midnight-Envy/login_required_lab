class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    session[:name]
  end
end