class Task < ActiveRecord::Base
  attr_accessible :execution_time, :measurement, :name, :price, :priority
  
  has_many :order_tasks, dependent: :destroy
  has_many :orders, through: :order_tasks
  
  has_many :resource_in_tasks, class_name: "ResourceInTask"
  has_many :resources, through: :resource_in_tasks
end
