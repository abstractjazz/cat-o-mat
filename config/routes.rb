Rails.application.routes.draw do
  root 'users#new'
  resources :users do 
    resources :cats 
  end 
  resource :cat
end
