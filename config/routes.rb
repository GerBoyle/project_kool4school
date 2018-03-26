Rails.application.routes.draw do
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'
  get 'books_path', to: "books#index"
  get 'my_books', to:'users#my_books'
end
