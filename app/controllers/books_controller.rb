class BooksController < ApplicationController

    def search
        @book = Book.find_by("isbn_13 = ? OR isbn_10 = ?", params[:isbn], params[:isbn])

        if @book
            render turbo_stream: turbo_stream.replace("book_handler", partial: "books/search", locals: { book: @book })
        else
            render turbo_stream: turbo_stream.replace("book_handler", partial: "books/not_found")
        end

        # respond_to do |format|
        #     if @book
        #       format.json { render json: @book, status: :ok }
        #       format.turbo_stream { render turbo_stream: turbo_stream.replace("book_handler", partial: "books/search", locals: { book: @book })}
        #     else
        #       format.json { render json: @book, status: :not_found  }
        #       format.turbo_stream { render turbo_stream: turbo_stream.replace("book_handler", partial: "books/not_found") }
        #     end
        # end
    end
end
