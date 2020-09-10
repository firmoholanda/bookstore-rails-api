# 📃 bookstore-rails-api

api for bookstore-react-redux front-end app. this rest api allows us to manage database resources. a signed user can: add, remove, list, and update books as well as select a favorite book.


## 📡 technologies used

-	css
-	ruby
-	rails
- SQLite
- git
- apiary.io (for documentation)

css, ruby, rails, SQLite, git and apiary.io was used on this project.



## 🚀 the project

this project can be found in https://github.com/firmoholanda/bookstore-rails-api


### ✨ [api documentation](https://bookstorerailsapi.docs.apiary.io/)

<a href="" target="_blank">
    <img alt="app image" src="https://github.com/firmoholanda/bookstore-rails-api/blob/release/app/assets/images/app_screenshot.png"/>
</a>



## 🔨 instructions

to get started with the app, clone the repo:
```
$ git@github.com:firmoholanda/bookstore-rails-api.git
```

install dependencies:
```
$ bundle install
```

migrate db:
```
$ rake db:migrate
```

seed db:
```
$ bundle exec rake db:seed
```

start development derver:
```
$ rails s
```

open app on your browser:
```
$ http://localhost:3000/
```

run rubocop:
```
$ rubocop
```

run tests:
```
$ bundle exec rspec
```

httpie usage examples:

- download httpie from: https://httpie.org/
- start development derver:
- test the following commands. have fun!

signup user:
```
http POST :3000/signup name=holanda email=holanda@email.com password=foobar password_confirmation=foobar
```

auth user:
```
http POST :3000/auth/login email=holanda@email.com password=foobar
```

list books from user:
```
http GET localhost:3000/books Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkyMzA5NDV9.PCS_vbfRlFuTAw9iNQNBMlB2NF37ZBhneZjoicy6EJE"
```

add book:
```
http POST localhost:3000/books title=book01 description=desc_book01 category=cat01 Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkyMzA5NDV9.PCS_vbfRlFuTAw9iNQNBMlB2NF37ZBhneZjoicy6EJE"
```

show books from user:
```
http GET localhost:3000/books/3 Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkxMTI1OTF9.rqI8cb52VlB6uTowgMEQEA7UrFEtfkD6bcnYDezJOSE"
```

update book:
```
http PUT localhost:3000/books/3 title=book099 Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkxMTI1OTF9.rqI8cb52VlB6uTowgMEQEA7UrFEtfkD6bcnYDezJOSE"
```

delete book:
```
http DELETE localhost:3000/books/3 Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkxMTI1OTF9.rqI8cb52VlB6uTowgMEQEA7UrFEtfkD6bcnYDezJOSE"
```

get favorites from user:
```
http GET localhost:3000/favourites Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkyMzA5NDV9.PCS_vbfRlFuTAw9iNQNBMlB2NF37ZBhneZjoicy6EJE"
```

add favourite book:
```
http POST localhost:3000/favourites/3 Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkxMTI1OTF9.rqI8cb52VlB6uTowgMEQEA7UrFEtfkD6bcnYDezJOSE"
```

delete favourite book:
```
http DELETE localhost:3000/favourites/3 Authorization:"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTkxMTI1OTF9.rqI8cb52VlB6uTowgMEQEA7UrFEtfkD6bcnYDezJOSE"
```



## 🤝 contributing

contributions, issues, and feature requests are welcome!<br/>feel free to check [issues page](hhttps://github.com/firmoholanda/bookstore-rails-api/development/issues).

1. fork it (https://github.com/firmoholanda/bookstore-rails-api/development/fork)
2. create your working branch (git checkout -b [choose-a-name])
3. commit your changes (git commit -am 'what this commit will fix/add/improve')
4. push to the branch (git push origin [chosen-name])
5. create a new pull request



## 🤖 contributor

firmo holanda - [gitHub](https://github.com/firmoholanda)



## 🙋‍♂ show your support

give a ⭐️ if you like this project!



## 📝 license

this project is [MIT](https://github.com/firmoholanda/bookstore-rails-api/development/license.txt) licensed.
