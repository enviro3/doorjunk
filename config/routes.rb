Rails.application.routes.draw do
  get 'order/new'

  get 'order/create'

  get 'charges/new'

  get 'charges/create'

  get 'tester/show'

  resources :contact, only: [:create]
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :charges, only: [:new, :create]
  # root to: "products#index"

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

   # resources :home

  get 'home/products'

  get 'home/about'

  get 'home/takeAction'

  get 'home/cart'

  get 'home/contact'

  get 'home/index'

  get 'home/faq'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
