class BooksController < ApplicationController

    def search
        @book = Book.find_by("isbn_13 = ? OR isbn_10 = ?", params[:isbn], params[:isbn])

        if @book
            render turbo_stream: turbo_stream.replace("book", partial: "books/search", locals: { book: @book })
        else
            render turbo_stream: turbo_stream.replace("book", target: "book", partial: "books/not_found")
        end
    end
end
