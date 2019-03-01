Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tackle_box_items
      resources :catches
      resources :users
      resources :baits
      resources :models
    end
  end
end
