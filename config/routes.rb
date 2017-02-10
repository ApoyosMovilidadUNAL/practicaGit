
Rails.application.routes.draw do
  root to: 'pages#index'
  get 'contactUS', to: 'page#contactUS'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
