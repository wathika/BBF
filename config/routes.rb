Rails.application.routes.draw do

  get 'bikes', to: 'pages#index'

  post '/bikes', to: 'bikes#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
