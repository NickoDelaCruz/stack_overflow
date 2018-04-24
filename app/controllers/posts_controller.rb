class PostsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) #(params)
    if @post.save
      flash[:notice] = "Your post is submitted"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    # comment_id = @post.comment_id
    @comments = @post.comments

    render :show
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(post_params)
        flash[:notice] = "Your comment is updated"
        redirect_to posts_path
      else
        render :edit
      end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      flash[:notice] = "Comment is removed"
      redirect_to posts_path
    end

private
  def post_params
    params.require(:post).permit(:username, :question)
  end
end
