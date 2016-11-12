Rails.application.routes.draw do
  get 'competitors/index'

  root 'pages#game'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
