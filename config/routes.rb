Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  resources :messages, only: [:create]
  resources :rooms, only: [:create,:show]
end
