Rails.application.routes.draw do
  resources :attachments, only: [:index, :create]
  resources :investors, only: [:index, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
