Rails.application.routes.draw do
  root 'tournaments#index'
  
  resources :tournaments do 
    resources :teams do
      resources :players
    end
  end
end
