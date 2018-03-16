Rails.application.routes.draw do


  get 'bikes', to: 'pages#index'

  post '/bikes', to: 'bikes#new'

  post '/batteries', to: 'batterys#new', as: 'batteries'

  post '/chargers', to: 'chargers#new', as: 'chargers'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
