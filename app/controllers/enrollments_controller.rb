class EnrollmentsController < ApplicationController
  def submit
    send_data(generate_pdf, :filename => "certificado.pdf", :type => "application/pdf")
  end

  private

  def generate_pdf
    Prawn::Document.new do
    end.render
  end
end
