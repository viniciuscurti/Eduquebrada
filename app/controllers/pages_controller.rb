class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :construction ]

  def home
    @last_courses = Course.order(:created_at).last(8)
  end

  def construction
  end
end
