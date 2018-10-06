Rails.application.routes.draw do
    
  get "savings/main" => "savings#main"

  get "home/top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#top"
end
