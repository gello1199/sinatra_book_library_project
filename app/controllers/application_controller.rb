require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    # set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'greoi344feoi49uf34t9ure'
  end

  get "/" do
    erb :welcome
  end

end
