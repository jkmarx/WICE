class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.writer = current_user.name
    @comment.recipe = Recipe.find(params[:recipe_id])
    @comment.save!
    redirect_to recipe_path(@comment.recipe_id)
    end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@comment.recipe_id)
  end

  private
  def comment_params
    params.require(:comment).permit(:important,:writer, :body, :recipe_id, :user_id)
  end
end


