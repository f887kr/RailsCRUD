class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(title:params[:title], content:params[:content])
    @post.save

    redirect_to '/'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to '/'
  end

  def read
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
  end

  def real_update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to '/'
  end

  def comment_create
    @comment = Comment.new(post_id: params[:post_id], title: params[:title], content: params[:content])
    @comment.save

    redirect_to :back
  end

  def comment_destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to :back
  end

  def reply_create
    @comment = Comment.new(post_id: params[:post_id], title: params[:title])
    @comment.save

    redirect_to :back
  end
end
