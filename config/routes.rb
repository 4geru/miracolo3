Rails.application.routes.draw do
  devise_for :users
  get 'site/top'
  root "site#top"
  resources :sub_objs
  resources :main_objs
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
