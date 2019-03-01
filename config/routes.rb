Rails.application.routes.draw do
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy

  namespace :api do
    namespace :v1 do
      resources :tackle_box_items
      resources :catches
      resources :baits
    end
  end
end
