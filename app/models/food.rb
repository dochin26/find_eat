class Food < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :results
end
