class BooksController < ApplicationController
  before_action :conditional_request_format

  def search
    @book = Book.joins(:publisher)
                .select(:id, :title, :isbn_13, :isbn_10, :edition, :publication_year, :name, :price)
                .find_by('isbn_13 = ? OR isbn_10 = ?', params[:isbn], params[:isbn])

    respond_to do |format|
      if @book.present?
        @authors = @book&.book_authors
                        &.select("CONCAT(authors.first_name,' ',authors.middle_name,' ',authors.last_name) as book_author")
                        &.joins(:author)
                        &.map(&:book_author)
                        &.join(', ')

        format.turbo_stream
      else
        format.turbo_stream do
          render partial: 'not_found'
        end
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
