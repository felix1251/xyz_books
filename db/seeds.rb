# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts File.open('app/assets/images/The_Bend_of_Luck.png')

author1 = Author.create(first_name: "Kingsley", last_name: "Amis")
pub1 = Publisher.create(name: "Publishers Weekly")

book1 = Book.create(title: "Cosmoknights", isbn_13: "978-1-60309-454-2", 
    publication_year: "2019", edition: "Book 1", author_id: author1.id, publisher_id: pub1.id, price: "100"
)

book1.cover.attach(io: File.open("app/assets/images/The_Bend_of_Luck.png"), filename: "The_Bend_of_Luck.png")



BookAuthor.create(book_id: book1.id, author_id: author1.id)