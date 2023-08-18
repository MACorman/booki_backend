Rails.application.routes.draw do
  resources :list_books
  resources :lists
  resources :reviews
  resources :loans
  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
