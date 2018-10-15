class User < ApplicationRecord
  has_many :logs
  has_one :savings
    
  validates :name, presence:true, uniqueness: true

  def new
  end
end
