Rails.application.routes.draw do
  root 'tournaments#index'
  
  resources :tournaments do 
      resources :teams 
    end

  resources :players

  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: :sessions

end
