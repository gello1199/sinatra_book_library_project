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

    get '/books/:id' do
        @book = Book.find_by_id(params[:id])
        erb :'books/show'
    end

    get '/books/:id/edit' do
        
    end





end