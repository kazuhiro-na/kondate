Rails.application.routes.draw do
  get 'cookings/index'
  devise_for :users
  root to: "cookings#index"
end
