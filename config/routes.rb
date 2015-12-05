 Rails.application.routes.draw do
  
  get 'products/create'

  get 'products/update'

  get 'products/edit'

  get 'products/destroy'

  get 'products/show'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'products/index'

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :users 
  root to: "products#index"

 		  
     
          # root 'static_pages#home'

          get 'help'    => 'static_pages#help'
          get 'about'   => 'static_pages#about'
          get 'contact' => 'static_pages#contact'
          get 'signup'  => 'users#new'
          


          get    'login'   => 'sessions#new'
      	  post   'login'   => 'sessions#create'
          delete 'logout'  => 'sessions#destroy'


  
  
end
