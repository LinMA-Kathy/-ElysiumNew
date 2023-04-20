class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = product.search(params[:search]).order(created_at: :desc)
      else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def image_url(image_identifier)
    api_key = ENV['API_KEY']
    "https://api.example.com/images/#{image_identifier}?api_key=#{api_key}"
  end
end
