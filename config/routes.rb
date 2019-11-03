Rails.application.routes.draw do
  devise_for :users
  root 'plans#index'
  resources :plans
  resources :users
  resources :couples, only: [:show, :create, :edit, :update, :destroy, :index]

end
