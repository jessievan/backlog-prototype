class Program < ActiveRecord::Base
  attr_accessible :title
  
  has_one :plan
  has_many :projects, through: :plans
  has_many :objectives
  
  def backlog
    @objectives
  end
end