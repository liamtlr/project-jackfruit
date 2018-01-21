Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "food_swaps#index"

  resources :food_swaps
  resources :profiles

  authenticate :user do
    resources :food_swaps, only: [:new, :create, :edit, :update, :destroy]
    resources :profiles, only: [:new, :create, :edit, :update, :destroy]
  end
end
