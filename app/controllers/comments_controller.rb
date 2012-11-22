class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment]) #este parametro es el objeto creado a partir de los atributos de la clase comment
   	BloggerMailer.welcome_mail()
    respond_to do |format|
      format.js
    end
  end

end