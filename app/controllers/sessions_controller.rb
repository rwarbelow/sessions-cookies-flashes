class SessionsController < ApplicationController
  def index
    @session = session
  end

  def new
  end

  def create
    session[session_data[:key]] = session_data[:value]
    redirect_to sessions_path
  end

  def destroy
    sessions.delete(params[:key])
    redirect_to sessions_path
  end

  private

  def session_data
    params[:session_data]
  end
end