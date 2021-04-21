Rails.application.routes.draw do
  root 'users#new'
  get '/login' => 'session#new'
  get '/auth/facebook/callback' => 'session#create'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  post '/logout' => 'session#destroy'
  post '/trades', to:'trades#create'
  post '/notes', to:'notes#create'
  get '/newgame', to:'minigames#new'
  get 'signup', to: 'users#new', as: 'signup'
  post '/minigames', to: 'minigames#create', as: 'minigames'
  resources :users do 
    resources :cats, except: [:index]
  end 
  resources :cats
  end 

