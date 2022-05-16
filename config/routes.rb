Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/" => 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
