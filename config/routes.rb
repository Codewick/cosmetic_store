Rails.application.routes.draw do


  resources :orders
  resources :products do
  resources :reviews
  end

  root 'products#index'

  resources :profiles

  devise_for :users

  get 'contact' => 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
