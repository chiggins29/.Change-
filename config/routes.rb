Rails.application.routes.draw do

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :events
  devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register"}

  root to: 'home#index'
end
