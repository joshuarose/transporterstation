Rails.application.routes.draw do
  devise_for :organizations
  devise_for :users
  resources :dogs, :legs
  get 'home/index'
  root "home#index"
end
