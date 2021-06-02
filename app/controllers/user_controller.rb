class UserController < ApplicationController
    
    get '/users' do
        @users = User.all
        erb :'users/index'
    end

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)

        if !user.save
            redirect '/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/books'
        end  
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        # binding.pry
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/books'
        end
        redirect '/login'
    end

    get '/logout' do
        session.clear
        redirect '/books'
    end

end