Rails.application.routes.draw do

  resources :user
  resources :gossips
  get 'home/:name', to: 'gossip#index', as: 'home'
  get 'team/team'
  get 'contacts/contact'
  
  

  root 'gossips#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
