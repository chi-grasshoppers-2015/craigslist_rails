class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @category = Category.find(params[:id])
    @article = @category.articles.new
  end

  def create
    @category = Category.find(params[:article][:category_id])
    p @category
    @article = @category.articles.create(article_params)
    redirect_to @article
  end

  def update

  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :category_id)
  end


end
