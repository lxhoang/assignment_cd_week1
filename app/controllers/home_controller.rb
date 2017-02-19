class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
  	@sections = Section.all
  	@food_items = FoodItem.all
  	if params[:section_id].present?
  		@current_secion = Section.find(params[:section_id])
  	end

  	if params[:sort_column]
  		@food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
  	end

  end


end
