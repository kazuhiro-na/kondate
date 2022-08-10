Rails.application.routes.draw do
  devise_for :users
  root to: "cookings#index"
  resources :cookings, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  resources :users, only: :show
end
