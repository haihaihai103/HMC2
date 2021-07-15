Rails.application.routes.draw do
  devise_for :users
  root to: 'patients#index'
  get '/users', to: 'devise/registrations#new'
end
