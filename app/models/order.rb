class Order < ActiveRecord::Base
  attr_accessible :dish_id, :user_id
  
  belongs_to :user
  belongs_to :dish
  
  scope :to_day, where('created_at < ? and created_at > ?', Time.now.end_of_day, Time.now.beginning_of_day())
  
end
