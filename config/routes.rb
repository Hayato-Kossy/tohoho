Rails.application.routes.draw do
  resources :users
  root 'home#index'
  get 'home/index'
  get '/help', to: 'home#help'
  resources :books do
    resources :comments
  end
end
