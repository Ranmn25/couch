Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  resources :therapists, only: [:index, :show, :edit, :update] do
    resources :sessions, only: [:new, :create]
    resources :messages, only: [:new, :create]
  end
  resources :sessions, only: [:show, :edit, :update, :delete] do
    resources :notes, only: [:new, :create]
  end
  resources :articles, only: [:index, :show]
  get '/dashboard', to: 'pages#dashboard'
end
