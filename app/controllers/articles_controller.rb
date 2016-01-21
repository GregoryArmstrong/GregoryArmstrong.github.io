class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to articles_path
  end

  def index
    @articles = Article.all
  end

  private

  def article_params
    params.require(:article).permit(:text, :author)
  end

end
