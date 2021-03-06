Rails.application.routes.draw do
  resources :types
  root 'users#new'
  get '/login' => 'session#new'
  get '/auth/facebook/callback', to: 'session#create'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  post '/logout' => 'session#destroy'
  post '/trades', to:'trades#create'
  post '/notes', to: 'notes#create'
  get '/cats/:id/notes/:note_id/edit', to:'notes#edit', as: 'edit_note'
  get '/newgame', to:'minigames#new'
  get '/signup', to: 'users#new', as: 'signup'
  post '/minigames', to: 'minigames#create', as: 'minigames'
  get  '/users/:id/cats/:cat_id/delete', to: 'cats#destroy'
  post '/users/:id/cats/:cat_id/delete', to: 'cats#destroy', as: 'delete_cat'
  get  '/users/:user_id/delete', to: 'users#destroy'
  post '/users/:user_id/delete', to: 'users#destroy', as: 'delete_user'
  patch '/notes/:id', to: 'notes#update'
  post '/notes/:id/delete', to: 'notes#destroy', as: 'delete_note'
  get '/notes/:id/delete', to: 'notes#destroy'
  

  resources :users do 
    resources :cats, except: [:index]
  end 
  resources :cats
  resources :notes, only: [:show]
  end 

