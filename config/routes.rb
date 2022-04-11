Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboard#index'

  resources :posts do
    resources :comments
  end
end
