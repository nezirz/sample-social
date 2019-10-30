class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = "Post successfully created"
      redirect_to index_path
    else
      flash[:danger] = "Post unsuccessfully created"
      redirect_to posts_path
    end
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.order(created_at: :desc)
  end

  private
  def post_params
    params.require(:post).permit(:caption, :image, :user_id)
  end
end
