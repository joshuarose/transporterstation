Rails.application.routes.draw do
  devise_for :organizations
  devise_for :users
  resources :transports do
    resources :dogs
    resources :legs do
      get 'signup' => 'legs#sign_up', as: :volunteer
    end
  end
  get 'home/index'
  root "home#index"
end
