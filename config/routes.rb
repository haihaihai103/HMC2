Rails.application.routes.draw do
  devise_for :users
  root to: 'patients#index'
  get '/users', to: 'devise/registrations#new'
  resources :patients do
    get :chart, on: :collection
  end
end
