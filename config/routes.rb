Rails.application.routes.draw do
  resources :avaible_hours
  resources :services
  devise_for :users

  resources :profesions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
