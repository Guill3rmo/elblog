class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment]) #este parametro es el objeto creado a partir de los atributos de la clase comment
   	 
   	if @comment.save
   		CommentMailer.comment_notification(@post)
   	else
   		redirect_to post_path(@post), :alert => @comment.errors.full_messages.to_sentence
   	end

   	respond_to do |format|
      format.js
    end
  end

end