class BooksController < ApplicationController
    get '/books' do 
        @books = Book.all
        erb :'books/index'
    end

    get '/books/new' do

        erb :new
    end


end