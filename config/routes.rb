Rails.application.routes.draw do

  resources :users

  resources :lists do
    resources :list_items
  end

  match "/welcome/login" => "welcome#login", :via=> :post, :as => :login


  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
