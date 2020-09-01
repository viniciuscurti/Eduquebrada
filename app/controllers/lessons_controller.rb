class LessonsController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!

  def index
    @lessons = policy_scope(Lesson).order(created_at: :desc)
  end



end
