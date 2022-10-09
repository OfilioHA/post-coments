class PostsController < ApplicationController
    def index
        @posts = Post.all.includes(:comments)
        render :json => @posts, 
            :include => :comments 
    end

    def show
        @posts = Post.includes(:comments).find(params[:id]) 
        render :json => @posts, 
            :include => :comments 
    end

    def comments
        @comments = Post.find(params[:id]).comments
        render json: @comments
    end

end
