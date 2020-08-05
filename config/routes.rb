Rails.application.routes.draw do

  root to: 'public#homepage'
  resources :posts
  get 'welcome/home'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/features'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
