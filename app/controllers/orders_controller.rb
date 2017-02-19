class OrdersController < ApplicationController
	def new
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build
	end

	def create 
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build order_params

		if @order.save!
			flash[:notice] = "Thanks for your order.
			The meal will be shipped to #{@order.address} at #{@order.created_at.strftime('%B %d, %Y')}"
			redirect_to menu_path
		else 
			render 'new'
		end
	end

	def order_params
		params.require(:order).permit(:quantity, :address)
	end

end
