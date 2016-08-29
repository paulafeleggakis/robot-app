Rails.application.routes.draw do
  resources :robots

  root :to => 'robots#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
