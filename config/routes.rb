Rails.application.routes.draw do
  devise_for :organizations
  devise_for :users
  resources :transports do
    resources :dogs, :legs
  end
  get 'home/index'
  root "home#index"
end
