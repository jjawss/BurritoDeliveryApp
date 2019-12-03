def new


end

def create

    user = User.find(:params[:user_name])

    if !user

    User.create({
        name: params[:name]
        address: params[:address]
        username: params[:username]
        password: params[:password]
    })

    else
    
        "That Username Already exist"
    
        # flash[:user_name_exist] = "That Username Already exist"
    
    end



end