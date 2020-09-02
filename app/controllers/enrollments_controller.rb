class EnrollmentsController < ApplicationController
  def submit
    send_data(generate_pdf, :filename => "DaUmaMAMADA.pdf", :type => "application/pdf") 
  end
  
  private 
  def generate_pdf
      Prawn::Document.new do
        text "MAMA EU QUE O PAI BOTO O PDF PRA BAIXAR"
      end.render 
  end
end
