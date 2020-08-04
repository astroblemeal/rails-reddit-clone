class PostsController < ApplicationController
    before_action :authenticate_user!, except: [ :index, :show ]
    before_action :set_post, only: [ :show ]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      @post.user_id = current_user.id
    if @post.save
      redirect_to communities_path
    else
      render :new
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
