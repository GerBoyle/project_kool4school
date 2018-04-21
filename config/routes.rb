Rails.application.routes.draw do
   
post '/cart/:product_id' => 'cart#add', :as => 'add'

   # Below are the routes added to send to the proper controller
 
  resources :orderdetails
  resources :orders
  resources :addresses
  resources :customers
  resources :books   #, only: [:index]
  devise_for :users 
  get 'my_basket' => "users#my_basket"
  get 'add_to_basket' => "users#add_to_basket"
  delete 'remove_from_basket' => "users#remove_from_basket"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'
  

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"

  get 'books_path', to: "books#index"
  get 'my_books', to:'users#my_books'
  get 'my_profile', to: 'users#my_profile'
  get 'custdetails/:id' => 'customers#showaddress', :as => :customer_details
  get 'orderdetails/:id' => 'orders#showorderinfo', :as => :order_details 
  get 'custorders/:id' => 'customers#showorders', :as => :customer_orders
  get '/subject/:id' => 'books#subject'
  post '/search' => 'books#search'
  
end



