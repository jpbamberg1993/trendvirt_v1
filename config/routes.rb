Rails.application.routes.draw do
  # root to: 'visitors#index'
  resources :posts do
  	resources :comments
  end
  
  root to: 'posts#index'

  get '/about', to: 'pages#about'
end
