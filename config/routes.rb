Rails.application.routes.draw do

  resources :metrics
  resources :equipment
  resources :facilities
  devise_for :users

  authenticated do
    root :to => 'dashboard#dashboard', as: :authenticated
  end

  root :to => 'static_pages#home'

  match "/about" => "static_pages#about", via: :get

end
