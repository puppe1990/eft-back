Rails.application.routes.draw do
  resources :phrases
  resources :categories
  resources :custom_phrases, only: [:index, :show, :update, :new, :create, :edit, :destroy]
  namespace :api do 
    namespace :v1 do
      resources :custom_phrases, only: [:index]
    end
  end
  root 'custom_phrases#index' 
end
