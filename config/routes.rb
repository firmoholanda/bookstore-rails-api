Rails.application.routes.draw do
  root 'static#home'

  # user
  post 'signup', to: 'users#create'

  # authentication
  post 'auth/login', to: 'authentication#authenticate'

  # books
  get 'books', to: 'books#index'
  post 'books', to: 'books#create'
  get 'books/:id', to: 'books#show'
  put 'books/:id', to: 'books#update'
  delete 'books/:id', to: 'books#destroy'
  # resources :books

  # favourites
  get 'favourites', to: 'favourites#index'
  post 'favourites/:book_id', to: 'favourites#create'
  delete 'favourites/:book_id', to: 'favourites#destroy'
end
