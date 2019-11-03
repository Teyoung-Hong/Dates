class Plan < ApplicationRecord
    has_many :parts
    #belongs_to :user
    #belongs_to :date_categories
end
