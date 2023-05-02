class BooksController < ApplicationController

    def search
        @book = Book.joins(:publisher).select(:id, :title, :isbn_13, :isbn_10, :edition, :publication_year, :name)
                    .find_by("isbn_13 = ? OR isbn_10 = ?", params[:isbn], params[:isbn])

        @authors = @book.book_authors.select("book_authors.book_id, GROUP_CONCAT(CONCAT(authors.first_name,' ',authors.last_name) SEPARATOR ', ') as book_author")
                        .joins(:author)
                        .group("book_authors.book_id") rescue nil

        if @book
            render turbo_stream: turbo_stream.replace("book", partial: "books/search", locals: { book: @book, authors: @authors || [] })
        else
            render turbo_stream: turbo_stream.replace("book", target: "book", partial: "books/not_found")
        end
    end
end
