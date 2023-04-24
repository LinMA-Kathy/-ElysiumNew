Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "payment", to: "pages#payment"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show, :index, :edit, :update]
  resources :products do
    resources :transactions, only: [:create]
  end
  resources :transactions, only: [:destroy, :edit, :update, :show]
  get "dashboard", to: "dashboard#dashboard"
end
