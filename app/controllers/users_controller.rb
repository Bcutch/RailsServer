class UsersController < ApplicationController

    def new
    end

    def create
    
        if (user = Signin.find_by(email: params[:email])) != nil
            if user.authenticate(params[:password])
                redirect_to "/play", notice: "Successfully logged in"
            else
                flash[:alert] = 'Invalid email or password'
                render :new
            end
        else
            flash[:alert] = 'Invalid email or password'
            render :new
        end
    end
end
