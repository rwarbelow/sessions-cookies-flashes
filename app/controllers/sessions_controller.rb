class SessionsController < ApplicationController
  def index
    @session = session
  end

  def new
  end

  def create
    # cookies[cookie_data[:key]] = cookie_data[:value]
    # redirect_to cookie_monsters_path
  end

  def destroy
    # cookies.delete(params[:key])
    # redirect_to cookie_monsters_path
  end

  private

  def session_data
    params[:session]
  end
end