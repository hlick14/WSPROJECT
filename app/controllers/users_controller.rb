class UsersController < ApplicationController


   def show
          @user = User.find(params[:id])
        end
  	
     def new
        @user = User.new
      end



     def create
           secure_params = params.require(:user).permit(:name, :email, 
                                        :password, :password_confirmation)
         @user = User.new(secure_params)
         if @user.save
                # session[:user_id] =User.current_user.id
                
                 remember @user       #  NEW LINE
                 flash[:success] = "Welcome to the MotoShop!"    # NEW LINE
                 redirect_to products_url   # NEW LINE
        else
                 render 'new'

              end

          end


     def update
      @user =User.find(params[id])
    @order = current_order
   
        @user.update_attributes(order_user)
   
    
  end
  private
  def order_user
    params.require(:order).permit(:order_id)
  end
end
