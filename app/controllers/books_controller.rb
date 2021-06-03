class BooksController < ApplicationController

    get '/books' do
        @books = Book.all
        # binding.pry
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
        if @book.save
        # binding.pry
        redirect '/books'
        else
            redirect '/books/new'
        end
    end

    get '/books/:id' do
        @book = Book.find_by_id(params[:id])
        # binding.pry
        erb :'books/show'
    end

    get '/books/:id/edit' do
        if !logged_in?
            redirect '/login'
        end

        @book = Book.find_by_id(params[:id])

        if @book.user_id != current_user.id
            redirect '/books'
        end
        erb :'books/edit'
    end

    patch '/books/:id' do
        if !logged_in?
            redirect '/login'
        end
        @book = Book.find_by_id(params[:id])
        if @book.user_id != current_user.id
            redirect '/books'
        end
        @book.update(params[:book])        
        @book.save

        redirect "/books/#{@book.id}"
    end

    delete '/books/:id' do
        if !logged_in?
            redirect '/login'
        end
        @book = Book.find_by_id(params[:id])
        if @book.user_id != current_user.id
            redirect '/books'
        end
        @book.destroy
        redirect "/books"
    end


end