class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to sessions_new_path
      # let them in redirect_to some page
    else
      # couldnt log in
      redirect_to '/'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end
end
