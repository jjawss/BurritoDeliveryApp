class UsersController < ApplicationController

def my_profile
    @user = User.find(session[:user_id])
end


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
    
        #"That Username Already exist"
    
        flash[:user_name_exist] = "That Username Already exist"
    end
    redirect_to "/users/login"
end

def login

end

def logout
    
    #clear session[:user_id]
    
    reset_session

    redirect_to "/users/login"
    
end

def auth
user = User.find_by({ username: params[:username]})
    if user != nil
        if user.authenticate(params[:password])
            puts "Login was succesful"
            session[:user_id] = user.id
            session[:user_logged_in] = true
        else 
            puts "Wrong password"
        end
    else
        puts "User does not exist"
    end
    
    
    redirect_to '/users/my_profile'

end





end
