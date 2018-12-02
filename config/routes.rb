Rails.application.routes.draw do
  resources :events
  resources :event_organizers
  resources :event_categories
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
