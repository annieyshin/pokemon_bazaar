class CartsController < ApplicationController

  def show
    binding.pry
    @order_items = current_order.order_items
  end
end
