Rails.application.routes.draw do
  get 'home/products'

  get 'home/about'

  get 'home/takeAction'

  get 'home/cart'

  get 'home/contact'

  root 'home#products'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
