Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update]
      resources :notes, only: [:index, :update]
    end
  end
end
