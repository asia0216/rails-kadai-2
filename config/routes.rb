Rails.application.routes.draw do
  get 'rooms/index', to: 'rooms#index'
  get 'rooms/new', to: 'rooms#new'
  post 'rooms/new', to: 'rooms#create'
  get 'rooms/show', to: 'rooms#show'
  get 'rooms/edit', to: 'rooms#edit'

  root 'users#home'
  get 'users/show_profile', to: 'users#show_profile'
  get 'users/show', to: 'users#show'
  get 'users/edit_account', to: 'users#edit'
  patch 'users/edit', to: 'users#update'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
