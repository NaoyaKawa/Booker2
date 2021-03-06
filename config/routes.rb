Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'books#top'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end
