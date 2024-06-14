Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: [:index, :show, :edit, :update] do
    get 'search', on: :collection
  end
end
