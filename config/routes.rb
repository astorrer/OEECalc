Rails.application.routes.draw do

  resources :metrics
  resources :equipment
  resources :facilities
  resources :expectations
  devise_for :users

  authenticated do
    root :to => 'dashboard#dashboard', as: :authenticated
  end

  root :to => 'static_pages#home'

  # Routes for static_pages. 
  match "/home"  =>    "static_pages#home",      via: :get
  match "/about" =>    "static_pages#about",     via: :get
  

end
