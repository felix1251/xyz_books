class HomeController < ApplicationController
    def index
        puts is_isbn_valid("978-1-891830-85-3")
    end
end
