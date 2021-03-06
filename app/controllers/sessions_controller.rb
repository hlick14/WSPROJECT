class SessionsController < ApplicationController
  def new
  end

  def create
        user = User.find_by_email(params[:session][:email].downcase)
            
        if user && user.authenticate(params[:session][:password])
          redirect_to root_path     #  NEW LINE
          remember user
          
          
        else 
          flash.now[:error] = 'Invalid email/password combination'
          render 'new'
        end
      end

  def destroy
        log_out if logged_in?
        reset_session
        
        
        redirect_to root_url
      end 

end
