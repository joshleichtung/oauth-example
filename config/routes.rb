Rails.application.routes.draw do
<<<<<<< HEAD
  # devise_for :users
  resources :dogs
  root "dogs#index"
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"  }

=======
  root "dogs#index"
  devise_for :users
  resources :dogs
  get '/auth/:github/callback', to: 'sessions#create'
>>>>>>> master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
