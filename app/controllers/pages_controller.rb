class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @last_courses = Course.order(:created_at).last(4)
  end
end
