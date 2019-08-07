class Tag < ApplicationRecord
    has_many :taggings
    validates :content, prensence: true

end
