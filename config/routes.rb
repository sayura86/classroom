Rails.application.routes.draw do
  devise_for :users
  get 'rooms/index'
  get 'rooms/new'
  get 'rooms/show/:id' => 'rooms#show', as: :rooms_show
  post 'rooms/create' => 'rooms#create'
  root to: "rooms#index"
end
