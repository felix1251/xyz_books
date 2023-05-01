class Book < ApplicationRecord
    belongs_to :author
    belongs_to :publisher
    validates :isbn_10, uniqueness: true
    validates :isbn_13, uniqueness: true
    # validates :publication_year, presence: true
    validates :title, presence: true, uniqueness: true

    validate :validate_isbn

    private

    def validate_isbn
        isbn_10 = self.isbn_10
        isbn_13 = self.isbn_13

        if validateIsbn13(isbn_13)
            self.isbn_13 = self.isbn_13.upcase.gsub(/\ |-/, '')
            self.isbn_10 = toISBN10(isbn_13)
        elsif validateIsbn10(isbn_10)
            self.isbn_10 = self.isbn_10.upcase.gsub(/\ |-/, '')
            self.isbn_13 = toISBN13(isbn_10)
        else
            errors.add(:isbn, "invalid isbn")
        end
    end

    def validateIsbn10(isbn)
        if (isbn || '').match(/^(?:\d[\ |-]?){9}[\d|X]$/i)
            isbn_values = isbn.upcase.gsub(/\ |-/, '').split('')
            check_digit = isbn_values.pop # last digit is check digit
            check_digit = (check_digit.upcase == 'X') ? 10 : check_digit.to_i

            sum = 0
            isbn_values.each_with_index do |value, index|
                sum += (index + 1) * value.to_i
            end

            (sum % 11) == check_digit
        else
           false
        end
    end

    def validateIsbn13(isbn)
        if (isbn || '').match(/^(?:\d[\ |-]?){13}$/i)
            isbn_values = isbn.upcase.gsub(/\ |-/, '').split('')
            return false if !isbn_values[0..2].join('').match(/(978|979)/)
            check_digit = isbn_values.pop.to_i

            sum = 0
            isbn_values.each_with_index do |value, index|
                multiplier = (index % 2 == 0) ? 1 : 3
                sum += multiplier * value.to_i
            end

            result = (10 - (sum % 10))
            result = 0 if result == 10

            result == check_digit
        else
            false
        end
    end

    def toISBN13(isbn10)
        isbn10 = isbn10[0..isbn10.length - 2] # remove check digit!
        result = "978-" + isbn10
        result += calcCheckDigitISBN13("978" + isbn10)
        return result
    end

    def toISBN10(isbn13)
        isbn_values = isbn13
        isbn_values = isbn_values.upcase.gsub(/\ |-/, '').split('')
        isbn_values = isbn_values[3, isbn_values.length]

        sum = 0
        isbn_values.each_with_index do |value, index|
            sum += (index + 1) * value.to_i
        end

        check_sum = (sum % 11)

        return isbn_values.join("") + (check_sum == 10 ? "X" : check_sum.to_s)
    end
    
    def calcCheckDigitISBN13(isbn)
        result = '?'
        sum = 0

        for i in 0..isbn.length - 1
            sum += isbn[i].to_i * if i.isOdd then 3 else 1 end
        end
    
        result = (10 - sum % 10) % 10 # Fixnum
    
        return result.to_s
    end
end
