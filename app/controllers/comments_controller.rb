  class CommentsController < ApplicationController
    def index
      @comments = Comment.all
    end

    def show
      @comments = Comment.find(params{:id})
      @post = Comment.post
    end

    def new
      @post = Post.find(params[:post_id])
      @comments = @post.comments.new
    end

    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(params)
      if @comment.save
        flash[:notice] = "Comment Successfully added"
        redirect_to post_path(@comment.post)
      else
        render :new
      end
    end

  end
