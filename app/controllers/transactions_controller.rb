class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new
    @transaction.user = current_user
    @product = Product.find(params[:product_id])
    @transaction.product = @product
    if @transaction.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update(transaction_params)
    redirect_to dashboard_path
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to dashboard_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:quantity)
  end
end
