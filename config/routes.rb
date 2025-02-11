# config/routes.rb
Rails.application.routes.draw do
  root 'books#index'
  
  get 'signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create'
  get 'profile', to: 'users#show', as: 'profile'
  
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :books, only: [:index, :show]
  
  post 'books/:id/borrow', to: 'borrowings#create', as: 'borrow_book'
  patch 'borrowings/:id/return', to: 'borrowings#return', as: 'return_borrowing'
end