class SectionsController < ApplicationController
  before_action :set_section, only: [:edit, :update, :show, :destroy]
  def index
    if params[:title]
      @sections = Section.where("title like ?", "%#{params[:title]}%")
    else
      @sections = Section.all
    end

  end

  def new
    @section = Section.new
    @sections = Section.all
  end

  def create
    @section = Section.new section_params
    if @section.save
      redirect_to sections_path, notice: 'Article was successfully created.'
    end
  end

  def edit
    @sections = Section.all
  end

  def update
    @section.update section_params
    redirect_to sections_path
  end

  def show
  end

  def destroy
    @section.destroy
    redirect_to sections_path
  end

  private
  def set_section
    @section = Section.find(params[:id])
  end

  def section_params
    params.permit(:name, :content, :lesson_id)
  end

end
