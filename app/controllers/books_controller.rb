class BooksController < ApplicationController

    get '/books' do
        @books = Book.all
        # binding.pry
        erb :'books/index'
    end

    get '/books/search' do
        # binding.pry
        @books = Book.where("title LIKE ?", "%#{params[:title]}%")
        # binding.pry
        if @books.empty?
            redirect '/books'
        else
        erb :'books/index'
        end
    end

    get '/books/new' do
        redirect_if_not_logged_in

        erb :'books/new'
    end

    post '/books' do
        redirect_if_not_logged_in

        book = Book.new(params)
        book.user_id = session[:user_id] #taking a book user_id and assigning it to the session
        if book.save
        # binding.pry
        redirect '/books'
        else
            redirect '/books/new'
        end
    end

    get '/books/:id' do
        @book = Book.find_by_id(params[:id])
        if !@book
            not_found
        end
        # binding.pry
        erb :'books/show'
    end

    get '/books/:id/edit' do
        redirect_if_not_logged_in

        @book = Book.find_by_id(params[:id])

        redirect_if_not_authorized
        erb :'books/edit'
    end

    patch '/books/:id' do
        redirect_if_not_logged_in

        @book = Book.find_by_id(params[:id])
        redirect_if_not_authorized
        @book.update(params[:book])        
        @book.save

        redirect "/books/#{@book.id}"
    end

    delete '/books/:id' do
        redirect_if_not_logged_in

        @book = Book.find_by_id(params[:id])
        redirect_if_not_authorized
        @book.destroy
        redirect "/books"
    end

    private

    def redirect_if_not_authorized
        if @book.user_id != current_user.id
            redirect '/books'
        end
    end


end