Rails.application.routes.draw do
  resources :books, only: %i[index show]

  #get 'users/Books'
  #get 'users/Favourites'
  
  # post
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  post 'favourites', to: 'favourites#create'

  # get
  get 'favourites', to: 'favourites#index'

  # delete
  delete 'favourites', to: 'favourites#destroy'

end
