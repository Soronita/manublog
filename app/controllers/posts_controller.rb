class PostsController < ApplicationController
  def read
  	@posts = Post.find(params[:id])
  end

  def create
  	post = Post.create({
  	  :subject => params[:subject],
  	  :entry => params[:entry]
  	})

  	redirect_to posts_read_path(post[:id])
  end

  def list
    # Alle Posts aus der Datenbank laden
    # und in @posts speichern
    @posts = Post.all

    # app/views/posts/list.html.erb laden
    # render "posts/list"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def delete
    Post.find(params[:id]).delete
    redirect_to posts_path
  end

  def update
    Post.update(params[:id], {
      :subject => params[:subject],
      :entry => params[:entry]
      })
    redirect_to posts_read_path(params[:id])
  end

  def new
  end
end