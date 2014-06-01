Rails.application.routes.draw do
  devise_for :organizations
  devise_for :users
  get 'home/index'

  root to: "home#index"
end
