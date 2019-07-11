Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:index, :show, :create, :update, :destroy]
      resources :cats, only: [:index, :show, :create, :update, :destroy]
      resources :exotics, only: [:index, :show,:create, :update, :destroy]
    end
  end
end
