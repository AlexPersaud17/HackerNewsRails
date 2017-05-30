class PostsController < ApplicationController
  include UserHelper
  def edit
    @post = Post.find_by(id: params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create
    redirect '/users/new' unless logged_in?
    @post = current_user.posts.create(title: params[:title], body: params[:body])
    redirect_to '/posts'
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to '/posts'
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.body = params[:body]
    @post.title = params[:title]
    @post.save
    redirect_to "/posts/#{@post.id}"
  end
  
  
end
