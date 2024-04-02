class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(coment_params)
    redirect_to article_path(@article)
  end

  private
    def coment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
