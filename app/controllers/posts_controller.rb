class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new(:title => new_params[:b], :content => new_params[:c])
    post.save
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def destroy
    post = Post.find(params[:id])
    post.delete()
    redirect_to posts_path
  end

  def update
    post = Post.find(params[:id])
    post.update(:title => new_params[:b], :content => new_params[:c])
    redirect_to post
  end





 private
  def new_params
    params.require(:a).permit(:b, :c)
  end

end
