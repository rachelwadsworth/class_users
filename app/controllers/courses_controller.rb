class CoursesController < ApplicationController
  def index
    @courses =Courses.all
  end

  def show
    @course =Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
  @course = Course.create(name: params[:course][:name])
  redirect_to @course
end
end
