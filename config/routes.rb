Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'

  resources :goals

  get 'interests', to: 'home#interests'
  get '/dashboard', to: 'dashboard#index'
end
