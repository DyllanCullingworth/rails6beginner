Rails.application.routes.draw do

  devise_for :accounts
  root to: 'public#homepage'
  resources :posts
  get "about" => "public#about", as: :about
  get "blog" => "public#blog", as: :blog
  get "contact" => "public#contact", as: :contact

  post "post/view" => "posts#save_post_view", as: :post_view

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
