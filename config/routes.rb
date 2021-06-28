Rails.application.routes.draw do
  devise_for :user, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
  resources :providers
  resources :products

  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
