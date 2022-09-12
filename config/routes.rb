Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  resources :posts

  get 'comments/:id', to: "comments#new"
  delete 'comments/:id', to: "comments#destroy", as: :destroy_comment
  resources :comments, only: [:create, :edit, :update]
end
