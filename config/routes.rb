Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  resources :products do
    collection {post :import}
  end
end