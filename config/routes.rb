Rails.application.routes.draw do
  devise_for :users
  root to: "cookings#index"
  resources :cookings, only: [:index, :new, :create]
  resources :users, only: :show
end
