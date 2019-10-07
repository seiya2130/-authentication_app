Rails.application.routes.draw do
  root 'static_pages#home'
  #get 'static_pages/home'
  get '/home', to:'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup', to:'users_#new'
   
  post '/signup', to:'users_#create'
  resources :users
end