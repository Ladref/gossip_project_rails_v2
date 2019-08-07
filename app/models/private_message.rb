class PrivateMessage < ApplicationRecord
  validates :content, prensence: true

end
