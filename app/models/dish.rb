class Dish < ActiveRecord::Base
  attr_accessible :day_of_week, :name

  has_many :orders
  has_many :users, through: :orders
end
