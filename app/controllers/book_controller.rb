class BookController < ApplicationController

    def search
        @book = Book.find_by(isbn_13: params[:isbn]).or(Book.find_by(isbn_10: params[:isbn]))

        if @book
            
        else

        end
    end
end
