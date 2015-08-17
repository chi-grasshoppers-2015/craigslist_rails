class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to @category
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(category_params)
    redirect_to @category
  end

  def delete
    Category.destroy(params[:id])
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end


end
