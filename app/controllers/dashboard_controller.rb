class DashboardController < ApplicationController
  def dashboard
    @transactions = Transaction.where(user_id:"#{current_user.id}")
    @clienttransactions = Transaction.where(product_id: current_user.products.ids)
    @products = Product.where(user_id:"#{current_user.id}")
    @total_amount = Transaction.joins(:product).sum('quantity * price')
  end

  def destroy
  end
end
