class RepliesController < ApplicationController
  def create
    @comment = Comment.find(params[:comment_id])
    @reply = Reply.new(reply_params)
    @reply.comment = @comment
    @reply.user = current_user
    authorize @reply
    if @reply.save
      redirect_to lesson_path(@comment.lesson), anchor: "reply-#{@reply.id}"
    else
      render 'lessons/show'
    end
  end

  def destroy
    @reply = Reply.find(params[:id])
    @comment = @reply.comment
    authorize @comment
    @reply.destroy

    redirect_to lesson_path(@comment.lesson)
  end

  private

  def reply_params
    params.require(:reply).permit(:content)
  end
end
