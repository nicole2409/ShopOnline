class CategoriesController < ApplicationController
  def show
@category=Category.find(params[:id])
@product=@category.products.page(params[:page]).per(6)
end
end
