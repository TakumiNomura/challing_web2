class User < ApplicationRecord
  has_many :logs
  validates :name, presence:true, uniqueness: true

  def new
  end
end
