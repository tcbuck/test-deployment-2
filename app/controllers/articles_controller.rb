class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def index
  @articles = Article.all
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :text))
    if @article.save
      redirect_to @article
    else
      render 'new'
    end

    @article.save
    redirect_to @article
  end
end
