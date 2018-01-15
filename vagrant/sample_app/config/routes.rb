Rails.application.routes.draw do
  get 'posts/new' => 'posts#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/top' => 'root#top'

  post '/posts' => 'posts#create'

  get '/posts/:id' => 'posts#show', as: 'post'
   # /posts 」というURLでpostsコントローラのindexアクションが実行され「index.html.erb」の内容がビューとして表示されます。
  # /posts/1 や /posts/3 に該当する
  get '/posts' => 'posts#index'

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'

  patch '/posts/:id' => 'posts#update', as:'update_post'

end
