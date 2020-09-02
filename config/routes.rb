Rails.application.routes.draw do

  # user
  post 'signup', to: 'users#create'
  
  # authentication
  post 'auth/login', to: 'authentication#authenticate'

  # books
  post 'books', to: 'books#create'
  get 'books', to: 'books#index'

  # favourites
  post 'favourites', to: 'favourites#create'
  get 'favourites', to: 'favourites#index'
  delete 'favourites', to: 'favourites#destroy'

end
