Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :jobs, only: [:index, :show, :create, :update, :destroy]
      resources :funfacts, only: [:index, :show, :create, :update, :destroy]
      resources :generations, only: [:index, :show, :create, :update, :destroy]
      resources :industries, only: [:index, :show, :create, :update, :destroy]
      resources :profiles, only: [:index, :show, :create, :update, :destroy]
      resources :applications, only: [:index, :show, :create, :update, :destroy]
      resources :helpwanteds, only: [:index, :show, :create, :update, :destroy] do  
        collection do
              get :female
              get :male
              get :agriculture
              get :domestic
              get :retailandtrade
              get :transportation 
              get :professional 
              get :manufacturing
              get :location
            end
          end
    end
  end
end
