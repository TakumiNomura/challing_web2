class Log < ApplicationRecord
  def to_param
    user_id
  end
end
