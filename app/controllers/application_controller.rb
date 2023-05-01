class ApplicationController < ActionController::Base

    def is_isbn_valid(isbn)
        unless isbn10(isbn) || isbn13(isbn)
            false
        else
            true
        end
    end

    private 

    def isbn10 value
        value =~ /^(?:ISBN(?:-10)?:?●)?(?=[0-9X]{10}$|(?=(?:[0-9]+[-●]){3})[-●0-9X]{13}$)[0-9]{1,5}[-●]?[0-9]+[-●]?[0-9]+[-●]?[0-9X]$/
    end 

    def isbn13 value
        value =~ /^(?:ISBN(?:-13)?:?●)?(?=[0-9]{13}$|(?=(?:[0-9]+[-●]){4})[-●0-9]{17}$)97[89][-●]?[0-9]{1,5}[-●]?[0-9]+[-●]?[0-9]+[-●]?[0-9]$/
    end
end
