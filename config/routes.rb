Rails.application.routes.draw do
  get 'search/search'
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users do
    get '/follows' => 'relationships#follows', as: 'follows'
    get '/followers' => 'relationships#followers', as: 'followers'
  end
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get '/search' => 'search#search'
  post 'follow/:id' => 'relationships#follow', as: 'follow' #フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' #フォロー外す


end