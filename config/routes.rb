Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :jobs, only: [:index, :show, :create, :update, :destroy]
      resources :funfacts, only: [:index, :show, :create, :update, :destroy]
      resources :generations, only: [:index, :show, :create, :update, :destroy]
      resources :industries, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
