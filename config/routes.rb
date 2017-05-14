Rails.application.routes.draw do
  get    'login'   => 'user_log#new'
  post   'login'   => 'user_log#create'

  get 'site/top'
  root "site#top"
  resources :sub_objs
  resources :main_objs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
