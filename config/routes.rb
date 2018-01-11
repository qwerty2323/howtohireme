Rails.application.routes.draw do
  get 'cart/index'

  post 'cart/add_to_cart'

  post 'cart/checkout'

  get 'items/index'
  post 'items/add_to_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
