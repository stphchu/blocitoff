Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:new, :create]
  end

  root 'welcome#index'


end
