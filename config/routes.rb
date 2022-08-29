Rails.application.routes.draw do
  namespace :api do
    get 'users/show'
  end
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tags
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
