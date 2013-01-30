Lunch::Application.routes.draw do
  devise_for :users

  resources :preferences
  resources :restaurants

  root to: 'preferences#index'
end
