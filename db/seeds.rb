# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Book.destroy_all
Loan.destroy_all
Review.destroy_all

u1 = User.create(username: "Sponge", email: "sponge@gmail.com")
u2 = User.create(username: "Maddy", email: "maddy@gmail.com")

b1 = Book.create(title: "War and Peace", author: "Leo Tolstoy", cover_art: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FWar-Peace-Vintage-Classics-Tolstoy%2Fdp%2F1400079985&psig=AOvVaw2u7UntpqRgAGQc_KzDjcpX&ust=1693491527166000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCJCqrdnJhIEDFQAAAAAdAAAAABAG", blurb: "I've never read this book")
b2 = Book.create(title: "The Rainbow Fish", author: "Marcus Pfister", cover_art: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thirdplacebooks.com%2Fbook%2F9780735841475&psig=AOvVaw2GCQhsI9Jg5R4w70tnSGqT&ust=1693491438753000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCLijnq_JhIEDFQAAAAAdAAAAABAH", blurb: "A story about a colorful fish")

l1 = Loan.create(user_id: u1.id, book_id: b2.id, due: 1.week.from_now.to_date)
l2 = Loan.create(user_id: u1.id, book_id: b1.id, due: 1.week.from_now.to_date)
l3 = Loan.create(user_id: u2.id, book_id: b1.id, due: 1.week.from_now.to_date)

r1 = Review.create(user_id: u1.id, book_id: b2.id, title: "Good book", body: "Loved any stories about fish", stars: 4)

l1 = List.create(user_id: u2.id, title: "To Be Read")

lb1 = ListBook.create(list_id: l1.id, book_id: b1.id)