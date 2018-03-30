# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(title:"ICT Skills for the Classroom", description:"This book is for students studying computers at school", price:35.99, author:"Michael Morgan", subject:"Computing", publisher:"Gill Education")
Book.create!(title:"Appreciating Art", description:"The bestselling Appreciating Art combines text and images in a modern, fresh layout, with accessible language.", price:29.95, author:"Aine Ni Charthaigh & Aidan O Sullivan", subject:"Art", publisher:"Gill Education")
Book.create!(title:"Real World Physics", description:"A complete Leaving Certificate textbook for Higher and Ordinary Level students", price:55.66, author:"Dan O'Regan", subject:"Physics", publisher:"Folens")
20.times do |n|
    title = Faker::Book.title
    description = "sample description of book"
    price = Faker::Number.decimal(2)
    author = Faker::Name.name
    subject = "French"
    publisher = Faker::Book.publisher
Book.create!(title: title, description:description, price:price, author:author, subject:subject, publisher:publisher)
end

20.times do |n|
    title = Faker::Book.title
    description = "sample description of book"
    price = Faker::Number.decimal(2)
    author = Faker::Name.name
    subject = "Biology"
    publisher = Faker::Book.publisher
Book.create!(title: title, description:description, price:price, author:author, subject:subject, publisher:publisher)
end

20.times do |n|
    title = Faker::Book.title
    description = "sample description of book"
    price = Faker::Number.decimal(2)
    author = Faker::Name.name
    subject = "English"
    publisher = Faker::Book.publisher
Book.create!(title: title, description:description, price:price, author:author, subject:subject, publisher:publisher)
end

20.times do |n|
    title = Faker::Book.title
    description = "sample description of book"
    price = Faker::Number.decimal(2)
    author = Faker::Name.name
    subject = "Irish"
    publisher = Faker::Book.publisher
Book.create!(title: title, description:description, price:price, author:author, subject:subject, publisher:publisher)
end

20.times do |n|
    title = Faker::Book.title
    description = "sample description of book"
    price = Faker::Number.decimal(2)
    author = Faker::Name.name
    subject = "Maths"
    publisher = Faker::Book.publisher
Book.create!(title: title, description:description, price:price, author:author, subject:subject, publisher:publisher)
end