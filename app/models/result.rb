class Result < ApplicationRecord
    # before_create :generate_slug
    belongs_to :food

    private

    # def generate_slug
    #     self.slug = SecureRandom.alphanumeric(12)
    # end
end
