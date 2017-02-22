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
      @food_items = @current_secion.food_items
  	end

  	if params[:search] && !params[:search].empty?
    	@food_items = FoodItem.search(params[:search])
    	@search_keyword = params[:search]
  	end

    if params[:sort_column]
      @food_items = FoodItem.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
  end

end
