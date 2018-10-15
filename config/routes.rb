Rails.application.routes.draw do
  get 'savings/mypage'
  #resources :savings, param: :user_id
  get 'home/top' => "home#top"
  #get "savings/main" => "savings#main"
  get "savings/main/:id" => "savings#main"
  get "savings/mypage/:id" => "savings#mypage"
  post "home/top" => "home#create"
  post "savings/main/:id" => "savings#create"
  post "savings/mypage/:id" => "savings#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#top"

end
