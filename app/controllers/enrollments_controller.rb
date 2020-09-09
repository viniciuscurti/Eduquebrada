class EnrollmentsController < ApplicationController
  before_action :set_course, only: [:new, :create]

  def show
    @enrollment = Enrollment.find(params[:id])
    @enrollment.approved
    @total = @enrollment.total_answers
    @result = @enrollment.right_answers
  end

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
    options = {
      page_size: "A5",
      page_layout: :landscape,
      background: "app/assets/images/fundo_certificado_2.jpeg",
      margin: [40, 75]
    }
    # enrollment = Enrollment.find(params[:id])

    Prawn::Document.new(options) do |pdf|
      pdf.fill_color "40464e"
      pdf.move_down 20
      pdf.text "NOME DO CURSO", size: 40, style: :bold, align: :center

      pdf.move_down 30
      pdf.text "Certificado", size: 24, align: :center, style: :bold

      pdf.move_down 30
      pdf.text "Certificamos que <b>Nando Vieira</b> participou...", inline_format: true

      pdf.move_down 15
      pdf.text "São Paulo, #{Time.now.strftime("%d/%m/%Y")}."

      pdf.move_down 100
      # pdf.font Rails.root.join("fonts/custom.ttf")
      # pdf.text "howto", size: 24

      pdf.move_up 5
      pdf.font "Helvetica"
      pdf.text "https://eduquebrada.com.br/", size: 15
    end.render
  end
end
