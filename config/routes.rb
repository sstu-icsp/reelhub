Rails.application.routes.draw do 
  # Do not change the order of any routes

  # Root
  root 'pages#home'

  # Devise:
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'

    # Map users_controller (Devise) to artists_controller
    get '/users/' => 'artists#index'
    get '/users/:id' => 'artists#show'
  end

  # Resources:
  resources :users do
    resources :feeds do 
      resources :comments
    end
    
    resources :videos
  end

  resources :artists

  # Custom (pages):
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  get '/support' => 'pages#support'
end
