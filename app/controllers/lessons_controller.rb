class LessonsController < ApplicationController
  

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson), notice: "lesson was successfully updated"
    else
      render :edit
    end
  end

    private

  def set_lesson
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  def lesson_params
    params.require(:course).permit(:name, :chapter, :description, :url)
  end
end
