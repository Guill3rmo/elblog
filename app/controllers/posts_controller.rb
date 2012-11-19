class PostsController < ApplicationController
  def index
  	@posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post }
    end
  end

  def show
  	 @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  def new
  	@post = Post.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  def delete
  	 
  end

end
