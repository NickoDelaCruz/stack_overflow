  class CommentsController < ApplicationController
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
      @comment = @post.comments.new(params)
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
      if @comment.update(params)
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

  end
