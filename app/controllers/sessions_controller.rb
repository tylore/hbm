class SessionsController < ApplicationController
  def new
    @explorer = Explorer.new
  end

  def create
    e = Explorer.where(email: params[:explorer][:email]).first
    if e != nil && e.authenticate(params[:explorer][:password])
      session["explorer_id"] = e.id.to_s
      redirect_to new_adventure_path(explorer_id: e.id)
    else
      redirect_to new_sessions_path
    end
  end

  def destroy
    session.destroy
    redirect_to new_sessions_path
  end
end

