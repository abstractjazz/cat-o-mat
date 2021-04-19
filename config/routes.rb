Rails.application.routes.draw do
  root 'users#new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  post '/logout' => 'session#destroy'
  post '/trades', to:'trades#create', as: 'trades' 
  post '/notes', to:'notes#create', as: 'notes' 
  resources :users do 
    resources :cats, except: [:index]
  end 
  resources :cats
  end 

