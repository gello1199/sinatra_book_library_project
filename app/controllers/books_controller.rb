class BooksController < ApplicationController
    get '/books' do 
        @books = Book.all
        erb :index
    end
end