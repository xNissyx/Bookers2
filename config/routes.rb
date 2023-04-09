Rails.application.routes.draw do
  resources :users

  resources :books

  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#about", as: "about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
