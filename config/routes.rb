Rails.application.routes.draw do
  #resources :savings, param: :user_id
  get 'home/top' => "home#top"
  #get "savings/main" => "savings#main"
  get "savings/main/:id" => "savings#main"
  post "home/top" => "home#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#top"

end
