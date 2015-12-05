class ApplicationController < ActionController::Base
  before_filter :set_current_user
  
  protect_from_forgery with: :exception
  helper_method :current_order
  include SessionsHelper

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end

  end
   def set_current_user
    User.current_user = current_user
  end
  #   def set_current_user
  #   User.current_user = User.find_by_id(session[:user_id])
  #   yield
  # ensure
  #   # to address the thread variable leak issues in Puma/Thin webserver
  #   User.current_user = nil
  # end 
end
