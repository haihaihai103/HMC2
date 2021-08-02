Rails.application.routes.draw do
  devise_for :users
  root to: 'patients#index'
  get '/users', to: 'devise/registrations#new'
  resources :patients do
    get :chart, on: :collection
    get :search, on: :collection
    get :excel, on: :collection
  end
  #get '/search', action: :search, controller: 'patients'
end
