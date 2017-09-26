Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'users#index'
  #resources :users
  get '/users' => 'users#index', as: :users


  get '/users/new' => 'users#new', as: :new_user

  get '/users/:id/edit' => 'users#edit', as: :edit_user

  get '/users/:id' => 'users#show', as: :user

  post '/users' => 'users#create'

  patch '/users/:id' => 'users#update'

  delete '/users/:id' => 'users#destroy'

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

end
