class EnrollmentsController < ApplicationController
  before_action :set_course, only: [:new, :create]

  def new
    @enrollment = Enrollment.new
    @enrollment.course = @course
    authorize @enrollment
  end

  def create
    @enrollment = Enrollment.new
    @enrollment.course = @course
    @enrollment.user = current_user
    authorize @enrollment
    if @enrollment.save!
      redirect_to course_path(@course), notice: "Você se matriculou com sucesso no curso #{@course.name}"
    else
      render "courses/index"
    end
  end

  def submit
    send_data(generate_pdf, filename: "certificado.pdf", type: "application/pdf")
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def generate_pdf
    Prawn::Document.new do
    end.render
  end
end
