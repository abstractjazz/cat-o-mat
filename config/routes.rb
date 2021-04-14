Rails.application.routes.draw do
  root 'users#new'
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  post '/logout' => 'session#destroy'
  post '/cats' => 'cats#create'

  resources :users do 
    resources :cats 
  end 
  resources :cats
end
