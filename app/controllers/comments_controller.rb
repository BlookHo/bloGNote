class CommentsController < ApplicationController

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.save

    redirect_to article_path(@comment.article)
   end

  private

    def comment_params
      params.require(:comment).permit(:name, :article_id, :body)
    end

end
