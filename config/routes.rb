Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
    # nest them to go from your restaurant routes into your reviews.
  end
  resources :reviews, only: [ :show, :edit, :updte, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
