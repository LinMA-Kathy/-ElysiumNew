class DashboardController < ApplicationController
  def dashboard
    @transactions = Transaction.where(user_id:"#{current_user.id}")
    @products = Product.where(user_id:"#{current_user.id}").order(:created_at)
    @total_amount = current_user.transactions.joins(:product).sum('quantity * price')
    @total_quantity = current_user.transactions.sum('quantity')
  end

  def destroy
  end
end
