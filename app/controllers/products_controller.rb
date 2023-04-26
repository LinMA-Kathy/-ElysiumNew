class ProductsController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @products = Product.all
    if params[:query].present?
      @products = @products.where("name ILIKE ?", "%#{params[:query]}%")
    end
    @vintage = @products.where(category: 'Vintage')
    @new = @products.where(category: 'New')
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @transaction = Transaction.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.category = 'vintage'
    if @product.save
      redirect_to products_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to dashboard_path(tab: 'product')
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to dashboard_path
  end

  def available
    @product = Product.find(params[:id])
    @product.available = false
    redirect_to dashboard_path
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
