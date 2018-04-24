  class CommentsController < ApplicationController
    before_action :authorize, only: [:show, :new, :create, :edit, :update, :destroy]
    def index
      @comment = Comment.all
    end

    def show
      @comment = Comment.find(params{:id})
      @post = Comment.post
    end

    def new
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new
    end

    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(comment_params)
      if @comment.save
        flash[:notice] = "Comment added"
        redirect_to post_path(@comment.post)
      else
        render :new
      end
    end

    def edit
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
    end

    def update
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        redirect_to post_path(@comment.post)
      else
        render :edit
      end
    end

    def destroy
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to post_path(@comment.post)
    end

    private
    def comment_params
      params.require(:comment).permit(:username, :comment_body)
    end

  end
