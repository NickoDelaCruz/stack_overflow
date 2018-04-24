  class CommentsController < ApplicationController
    def index
      @comments = Comment.all
    end

    def show
      @comments = Comment.find(params{:id})
      @post = Comment.post
    end


  end
