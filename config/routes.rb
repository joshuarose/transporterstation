Rails.application.routes.draw do
  devise_for :organizations
  devise_for :users
  resources :dogs
  get 'home/index'
  root "home#index"
end
