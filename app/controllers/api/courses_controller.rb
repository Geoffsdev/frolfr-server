class Api::CoursesController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.courses_played
  end

  def show
    course = Course.find(params[:id])
    render json: { course: course }
  end
end
