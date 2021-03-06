require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SECRET_KEY"]
  end

  not_found do
    status 404
    erb :error
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def current_user
      
      @current_user ||= User.find_by(id: session[:user_id])
      # binding.pry
    end

    def logged_in?
      !!current_user
    end

  end

  private

  def redirect_if_not_logged_in
    if !logged_in?
      redirect '/login'
    end
  end

end
