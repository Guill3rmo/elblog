class LikesController < ApplicationController

    def create
        @comment = Comment.find(params[:comment_id])
     
        @like = Like.new()
        @like.comment = @comment
        @like.blogger = current_blogger
        @like.save()
     
         #edirect_to posts_path

        respond_to do |format|
          format.js
        end
    end

    def destroy
        @like = Like.find(params[:id])
        @comment = Comment.find(params[:comment_id])
        @like.destroy
    end
end