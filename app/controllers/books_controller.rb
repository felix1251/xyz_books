class BooksController < ApplicationController
  before_action :conditional_request_format

  def search
    @book = Book.joins(:publisher).select(:id, :title, :isbn_13, :isbn_10, :edition, :publication_year, :name, :price)
                .find_by('isbn_13 = ? OR isbn_10 = ?', params[:isbn], params[:isbn])

    @authors = @book&.book_authors&.select("CONCAT(authors.first_name,' ',authors.middle_name,' ',authors.last_name) as book_author")
                    &.joins(:author)
                    &.map(&:book_author)
                    &.join(', ')

    respond_to do |format|
      if @book.present?
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace('book',
                                                    partial: 'books/search', locals: { book: @book, authors: @authors || 'N/A' })
        end
        format.json { render json: { book: @book, authors: @authors || 'N/A' }, status: :ok }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('book', partial: 'books/not_found') }
        format.json { render json: 'Book not found', status: :not_found }
      end
    end
  end

  private

  def conditional_request_format
    request.format = :json if content_type_is_json?
  end

  def content_type_is_json?
    request.headers['CONTENT_TYPE'] == 'application/json'
  end
end
