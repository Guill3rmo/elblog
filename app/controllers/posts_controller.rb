class PostsController < ApplicationController
  def index
  	@posts = Post.all
    
    respond_to do |format|
      format.html 
      format.json { render json: @post }
    end
  end

  def show
  	 @post = Post.find(params[:id])
     @comments = @post.comments

    respond_to do |format|
      format.html 
      format.json { render json: @post }
    end
  end

  def new
  	@post = Post.new
    respond_to do |format|
      format.html 
      format.json { render json: @post }
    end
  end
  
  def edit
  @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
 
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'post creado.' }
        format.json { render json: @post, post: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, post: :unprocessable_entity }
      end
    end
  end

 def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'done'}
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, post: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @post = post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :ok }
    end
  end


end
