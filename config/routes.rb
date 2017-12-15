Rails.application.routes.draw do
  get 'posts/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlrails server

  get '/posts' => 'posts#index' #初期一覧画面表示

  post '/posts' => 'posts#create' #新規投稿


  get '/top' => 'root#top'

  get '/posts/:id' => 'posts#show', as: 'post'
  # /posts/1 や /posts/3 に該当する
  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'

  patch '/posts/:id' => 'posts#update', as: 'update_post'

  delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'

end
