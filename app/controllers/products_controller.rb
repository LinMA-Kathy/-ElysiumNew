class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = product.search(params[:search]).order(created_at: :desc)
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
end
