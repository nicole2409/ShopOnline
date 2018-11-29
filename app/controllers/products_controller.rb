class ProductsController < ApplicationController
  def index
    @product=Product.all.order(created_at: :desc).limit(9)
    @products=@product.page(params[:page]).per(6)


  end

  def show
    @product=Product.find(params[:id])
    @category=@product.category

  end
end
