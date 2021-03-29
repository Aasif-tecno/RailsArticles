Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :articles
      resources :categories
      resources :comments
      root to: "users#index"
    end
  resources :categories
  resources :articles do
    resources :comments
  end
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
