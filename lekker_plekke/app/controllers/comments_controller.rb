class CommentsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @comment = @place.comments.create(comment_params)
    if @comment.save
      respond_to do |format|
        format.html do
          flash[:success] = 'Comment posted.'
          redirect_to @place
        end
        format.js
      end
    else
      render @place
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @place = @comment.place
    @comment.destroy
    respond_to do |format|
      format.html do
        flash[:sucess] = 'Comment deleted'
        redirect_to @place
      end
      format.js
    end
    
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :text)
    end
end
