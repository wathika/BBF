Rails.application.routes.draw do


  get 'bikes', to: 'bike#index'

  post 'bikes', to: 'bike#create'

  root to: 'bike#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
