class CommentsController < ApplicationController
  def create
    @lesson = Lesson.find(params[:lesson_id])
    @comment = Comment.new(comment_params)
    @comment.lesson = @lesson
    @comment.user = current_user
    authorize @comment
    if @comment.save
      redirect_to lesson_path(@lesson, anchor: "comment-#{@comment.id}")
    else
      render 'lessons/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @lesson = @comment.lesson
    authorize @comment
    @comment.destroy

    redirect_to lesson_path(@lesson)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
