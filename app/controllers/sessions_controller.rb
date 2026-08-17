class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to controller: "sessions", action: "new"
    end
  end

  def destroy
    session[:name] = nil
    redirect_to controller: "sessions", action: "new"
  end
end