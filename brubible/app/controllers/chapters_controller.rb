class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
  end

  def new
    @chapter = Chapter.find(params[:id])
    @chapter.save
    redirect_to @chapter
  end

  def create
    @chapter = Chapter.new(chapter_params)
    @chapter.save
    redirect_to @chapter
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  def edit
    @chapter = Chapter.find(params[:id])
  end

  def update
    @chapter = Chapter.find(params[:id])
    @chapter.update(chapter_params)
    redirect_to @chapter
  end

  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to chapters_path
  end

  private
    def chapter_params
      params.require(:chapter).permit(:name)
    end
end
