Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :styles
      resources :posts
      resources :post_styles
    end
  end
end
