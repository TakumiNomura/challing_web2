Rails.application.routes.draw do
  resources :logs, param: :user_id
  resources :savings, param: :user_id
  resources :users, param: :user_id
  get 'home/top'
  get "savings/main" => "savings#main"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#top"
end
