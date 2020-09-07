class CommentsController < ApplicationController

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @comment = Comment.new(comment_params)
    @comment.lesson = @lesson
    @comment.user = current_user
    if @comment.save
      redirect_to lesson_path(@lesson)
    else
      render 'lessons/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
