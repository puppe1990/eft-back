Rails.application.routes.draw do
  resources :phrases
  resources :categories
  root 'phrases#index' 
end
