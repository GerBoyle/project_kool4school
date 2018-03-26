Rails.application.routes.draw do
  resources :orderdetails
  resources :orders
  resources :addresses
  resources :customers
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'
  get 'books_path', to: "books#index"
  get 'my_books', to:'users#my_books'
  get 'custdetails/:id'=> 'customers#showaddress', :as => :customer_details
  get 'orderdetails/:id' => 'orders#showorderinfo', :as => :order_details 
  get 'custorders/:id' => 'customers#showorders', :as => :customer_orders
end



