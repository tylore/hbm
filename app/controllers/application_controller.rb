class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_explorer
  def current_explorer
    # Memoization next!!! @current_user ||=
    Explorer.where(id: session["explorer_id"]).first
  end
end
