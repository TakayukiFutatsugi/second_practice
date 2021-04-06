Rails.application.routes.draw do
  root to: 'home#index'
  resource :home, only: [:index]

  devise_for :candidates, controllers: {
    sessions: 'candidates/sessions',
    passwords: 'candidates/passwords',
    registrations: 'candidates/registrations'
  }
  devise_for :corporations, controllers: {
    sessions: 'corporations/sessions',
    passwords: 'corporations/passwords',
    registrations: 'corporations/registrations'
  }
  
  resources :jobs
  resources :candidates, only: [:index, :show]
  resources :chats, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
