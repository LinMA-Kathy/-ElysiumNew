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

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path(@product)
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path(@product)
  end

  def image_url(image_identifier)
    api_key = ENV['API_KEY']
    "https://api.example.com/images/#{image_identifier}?api_key=#{api_key}"
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, photos: [])
  end
end
