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

    post '/logout' do
        session.clear
        redirect '/books'
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        user = User.new(params)

        redirect '/login'
    end


end