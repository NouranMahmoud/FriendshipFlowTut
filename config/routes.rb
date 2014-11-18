Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'pages#welcome'
  #single pages
  get "home", to: "pages#home" , as: "home"
  
  #devise gem routes
  devise_for :users

  #friendship routes
  resources :friendships, only: [:create, :destroy]
  
end
