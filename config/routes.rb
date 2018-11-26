Rails.application.routes.draw do
  resources :promocaos
  resources :notificacaos
  root to: 'visitors#index'

  namespace :api do
   resources :push_notification, only: [:index]
   resources :promotion, only: [:index]
  end

end
