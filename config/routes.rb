Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root 'home#index'
  resources :projects
end
