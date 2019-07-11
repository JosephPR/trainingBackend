Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :pets, only: [:index, :show, :update, :destroy]
      resources :dogs, only: [:index, :show, :update, :destroy]
      resources :cats, only: [:index, :show, :update, :destroy]
      resources :exotics, only: [:index, :show, :update, :destroy]
    end
  end
end
