class BooksController < ApplicationController

    get '/books' do 
        @books = Book.all
        erb :'books/index'
    end

    get '/books/new' do
        erb :'books/new'
    end

    post '/books' do
        @book = Book.new(params)
        @book.save
        redirect '/books'
    end

    




end