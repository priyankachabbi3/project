class Category < ActiveRecord::Base
  attr_accessible :name, :user_id, :color
  has_many :events
  belongs_to :user

  validates :name, :color , :presence => {:message => "is a mandatory"}
  validates :name, :color , :uniqueness => {:scope => :user_id} 
end
