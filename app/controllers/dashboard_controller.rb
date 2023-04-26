class DashboardController < ApplicationController
  def dashboard
    @transactions = Transaction.where(user_id:"#{current_user.id}")
    @products = Product.where(user_id:"#{current_user.id}").order(:created_at)
    @total_amount = Transaction.joins(:product).sum('quantity * price')
    @total_quantity = Transaction.sum('quantity')
  end

  def destroy
  end
end
