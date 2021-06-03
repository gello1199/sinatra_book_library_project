require 'rack-flash'

class UserController < ApplicationController
    use Rack::Flash
    
    get '/users/:id' do
        @user = User.find_by_id(params[:id])
        # binding.pry
       erb :'users/show' 
    end

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)

        if !user.save
            # binding.pry
            message = ""
            user.errors.messages.each do |key, value|
                # binding.pry
             message << "#{key.to_s} #{value[0]} "
            end
            flash[:message] = message
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
        flash[:message] = "Invalid Username or Password"
        redirect '/login'
    end

    post '/logout' do
        session.clear
        redirect '/books'
    end

end