class UserController < ApplicationController
    
    get '/users' do
        @users = User.all
        erb :'users/index'
    end

    get '/users/signup' do
        erb :'users/signup'
    end

    post '/users/signup' do
        user = User.new(params)

        redirect '/signup'
    end

    get '/users/login' do
        erb :'users/login'
    end

    post '/users/login' do
        user = User.new(params)

        redirect '/login'
    end


end