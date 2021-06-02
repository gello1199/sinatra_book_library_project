class BooksController < ApplicationController

    get '/books' do 
        @books = Book.all
        erb :'books/index'
    end

    get '/books/new' do
        if !logged_in?
            redirect '/login'
        end
        erb :'books/new'
    end

    post '/books' do
        if !logged_in?
            redirect '/login'
        end
        @book = Book.new(params)
        @book.user_id = session[:user_id] #taking a book user_id and assigning it to the session
        @book.save
        binding.pry
        redirect '/books'
    end

    get '/books/:id' do
        @book = Book.find_by_id(params[:id])
        erb :'books/show'
    end

    get '/books/:id/edit' do
        if !logged_in?
            redirect '/login'
        end
        @book = Book.find_by_id(params[:id])
        erb :'books/edit'
    end

    patch '/books/:id' do
        if !logged_in?
            redirect '/login'
        end
        @book = Book.find_by_id(params[:id])
        @book.update(params[:book])        
        @book.save

        redirect "/books/#{@book.id}"
    end

    delete '/books/:id' do
        if !logged_in?
            redirect '/login'
        end
        @book = Book.find_by_id(params[:id])
        @book.destroy
        redirect "/books"
    end


end