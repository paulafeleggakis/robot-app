Rails.application.routes.draw do
  resources :robots

  root :to => 'robots#index'

  get '/robots/:id/move', to: 'robots#move', as: 'move_robot'
  get '/robots/:id/direction', to: 'robots#direction', as: 'direction_robot'
  get '/robots/:id/place', to: 'robots#place', as: 'place_robot'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
