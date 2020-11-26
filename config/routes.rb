Rails.application.routes.draw do
  resources :event_proofs
  resources :event_comments
  resources :event_registrations
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
