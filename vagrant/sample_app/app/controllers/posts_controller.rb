class PostsController < ApplicationController
  def new
  	# からのモデルをビューへ渡す
  	@post = Post.new
  end

  def create
  	#ストロングパラメーターを使用
  	post = Post.new(post_params)
  	#DBへ保存する
  	post.save
  	#新規投稿画面へリダイレクト
  	redirect_to post_path(post.id)
  end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  	
  end


  # privateは一種の境界線で、「ここから下はcontrollerの中でしか呼び出せません」という意味。
  # privateはControllerファイルの一番下のendのすぐ上に書いて下さい。
  private

	def post_params
        params.require(:post).permit(:title, :body, :category)
    end
end
