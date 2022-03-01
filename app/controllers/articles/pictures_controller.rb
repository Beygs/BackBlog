class Articles::PicturesController < ApplicationController
  # POST /articles
  def create
    @article = Article.find(params[:article_id])
    @article.picture.attach(params[:picture])
    render json: { message: "Picture added" }, status: :ok
  end
end
