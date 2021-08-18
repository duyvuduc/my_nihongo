class LessonsController < ApplicationController
  before_action :set_lesson, only: [:edit, :update, :show, :destroy]
  def index
    if params[:title]
      @lessons = Lesson.includes(:book).where("title like ?", "%#{params[:title]}%")
    else
      @lessons = Lesson.includes(:book).all
    end

  end

  def new
    @lesson = Lesson.new
    @books = Book.all
  end

  def create
    @lesson = Lesson.new lesson_params
    if @lesson.save
      redirect_to lessons_path, notice: 'Article was successfully created.'
    end
  end

  def edit
    @books = Book.all
  end

  def update
    @lesson.update lesson_params
    redirect_to lessons_path
  end

  def show
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path
  end

  private
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :content, :level, :category, :book_id)
  end

end
