class User < ApplicationRecord
  validates :user_id, uniqueness: true

  def to_param
    user_id
  end
end
