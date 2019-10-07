Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'home/index'
  
  root 'home#index'
  resources :devices
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :employees
  resources :notes
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  #Redirect route
  get "/app/views/home/index.html.erb", to:'home#index', as: 'viewHome'

end
