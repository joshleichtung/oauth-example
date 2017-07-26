Rails.application.routes.draw do
  root "dogs#index"
  devise_for :users
  resources :dogs
  get '/auth/:github/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
