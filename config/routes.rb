Rails.application.routes.draw do

  root to: 'public#homepage'
  resources :posts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
