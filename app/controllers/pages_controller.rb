class PagesController < ApplicationController
  def index
    order if params[:dish]
    @dishes = Dish.where(day_of_week: Time.now.wday)
    @orders = Order.to_day
  end
  
  def cancel
    order = Order.find(params[:id])
    order.destroy if order.user_id == current_user.id
    redirect_to root_path
  end 
  
  private
  def order
    order = Order.to_day.where(user_id: current_user.id).first
    if order
      order.update_attributes(dish_id: params[:dish])
    else 
      Order.create(dish_id: params[:dish], user_id: current_user.id)
    end
  end
end
