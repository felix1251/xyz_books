# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Authors
author1 = Author.create!(first_name: "Rainer Steel", last_name: "Rilke")
author2 = Author.create!(first_name: "Joel", last_name: "Hartse")
author3 = Author.create!(first_name: "Hannah", middle_name: "P.", last_name: "Hannah")
author4 = Author.create!(first_name: "Marguerite", middle_name: "Z.", last_name: "Duras")
author5 = Author.create!(first_name: "Kingsley", last_name: "Amis")

#Publischers
pub1 = Publisher.create!(name: "McSweeney's")
pub2 = Publisher.create!(name: "Paste Magazine")
pub3 = Publisher.create!(name: "Publishers Weekly")

#Books
book1 = Book.create!(title: "The Underwater Welder", isbn_13: "978-1-60309-398-9", 
    publication_year: "2004", edition: "Book 2", publisher_id: pub1.id, price: "3000"
)
book2 = Book.create!(title: "American Elf", isbn_13: "978-1-891830-85-3", 
    publication_year: "2022", publisher_id: pub2.id, price: "1000"
)
book3 = Book.create!(title: "Cosmoknights", isbn_10: "1-603-09454-7", 
    publication_year: "2019", edition: "Book 1", publisher_id: pub3.id, price: "2000"
)
book4 = Book.create!(title: "Essex County", isbn_10: "1-603-09038-X", 
    publication_year: "1990", publisher_id: pub3.id, price: "500"
)

#BookAuthors
BookAuthor.create!(book_id: book1.id, author_id: author1.id)
BookAuthor.create!(book_id: book2.id, author_id: author2.id)
BookAuthor.create!(book_id: book2.id, author_id: author3.id)
BookAuthor.create!(book_id: book2.id, author_id: author4.id)
BookAuthor.create!(book_id: book3.id, author_id: author5.id)
BookAuthor.create!(book_id: book4.id, author_id: author5.id)

#Books image cover
book1.cover.attach(io: File.open("app/assets/images/The_Underwater_Welder.png"), filename: "The_Bend_of_Luck.png")
book2.cover.attach(io: File.open("app/assets/images/American_Elf.jpg"), filename: "American_Elf.jpg")
book3.cover.attach(io: File.open("app/assets/images/Cosmoknights.jpg"), filename: "Cosmoknights.jpg")
book4.cover.attach(io: File.open("app/assets/images/Essex_County.jpeg"), filename: "Essex_County.jpg")
