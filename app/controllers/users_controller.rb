class UsersController < ApplicationController
    #Type Crud and ready for all controller sintaxys
    def new
        @user = User.new
    end

    def create
         @user = User.new(user_params)


        if @user.save
         return redirect_to '/'
        else 
         render :new, status: :unprocessable_entity
        end  
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_digest)
    end
    
end
