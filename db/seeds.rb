# create default user
User.create!(name: "firmo holanda", email: "firmo@viize.com", password: "foobar", password_confirmation: "foobar")

2.times do |n|
  name = Faker::Name.name.downcase
  email = "example-#{n+1}@example.com"
  password="foobar"
  password_confirmation="foobar"
  User.create!(name: name, email: email, password: password, password_confirmation: password_confirmation)
end

# create books
users = User.take(3)
users.each do |user|
  user_id = user.id
  title = Faker::Book.title[0..10].downcase
  description = Faker::Quote.yoda[0..30].downcase
  category= Faker::Book.genre.downcase
  Book.create!(user_id: user_id, title: title, description: description, category: category)
end

# create favourites
user_id = User.first().id
book_id = Book.first().id
Favourite.create!(user_id: user_id, book_id: book_id)