Rails.application.routes.draw do
  get "/home/about" => "homes#show"
  root :to => 'homes#index'
  devise_for :users
  resources :books
  resources :users
  resource :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
