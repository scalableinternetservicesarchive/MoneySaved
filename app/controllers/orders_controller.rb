class OrdersController < ApplicationController
  def create
  	@order = Order.new(order_params)
  	if @order.save
      flash[:success] = "Ordered!!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  	@order = Order.new
  	#debugger
  end

  private
  
    def order_params
      params.require(:order).permit(:order_no, :address, :name,
      :count, :user_id, :deal_id)
    end

end
