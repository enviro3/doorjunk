Rails.application.routes.draw do
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
