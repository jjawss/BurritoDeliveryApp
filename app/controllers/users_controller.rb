class UsersController < ApplicationController

def new
    @user = User.new
    @error_message = flash[:user_name_exist]
end

def create

    user = User.find_by(username: params[:user][:username])

    if !user

        User.create({
            name: params[:user][:name],
            address: params[:user][:address],
            username: params[:user][:username],
            password: params[:user][:password]
        })

    else
    
        # "That Username Already exist"
    
        flash[:user_name_exist] = "That Username Already exist"
        redirect_to "/users/new"
    end



end

end