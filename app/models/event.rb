class Event < ActiveRecord::Base
  attr_accessible :start, :description, :title, :user_id, :category_id
  belongs_to :user
  belongs_to :category 

  validates :category_id, :title, :start , :presence => {:message => "is a mandatory"}
end
