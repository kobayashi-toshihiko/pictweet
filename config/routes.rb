Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'                    #ルートパスの指定
  # get  'tweets'     => 'tweets#index'    #ツイート一覧画面
  # get  'tweets/new' => 'tweets#new'      #ツイート投稿画面
  # post 'tweets'     => 'tweets#create'   #ツイート投稿機能
  # delete 'tweets/:id' => 'tweets#destroy'
  # get 'tweets/:id/edit' => 'tweets#edit'
  # patch 'tweets/:id' => 'tweets#update'
  # get 'tweets/:id' => 'tweets#show'      #ツイート詳細画面
  # get  'users/:id'  => 'users#show'      #Mypageへのルーティング
  # resources :tweets               #tweets_controllerに対してのresourcesメソッド
  # resources :users, only: [:show] #users_controllerに対してのresourcesメソッド
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show] #users_controllerに対してのresourcesメソッド
end
