class Saving < ApplicationRecord
    belongs_to :user, optional: true
end
