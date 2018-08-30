Rails.application.routes.draw do

  get '/', to: 'welcome#index'

  resources :user_cabins
  resources :images
  resources :comments
  resources :cabins
  resources :users do
    resources :cabins, only: [:index], as: 'saved_cabins'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
