Rails.application.routes.draw do
  resources :phrases
  resources :categories
  resources :custom_phrases, only: [:index, :show, :update, :new, :create, :edit, :destroy]
  root 'phrases#index' 
end
