class Part < ApplicationRecord
    belong_to :plan
    has_many_attached :part_images
end
