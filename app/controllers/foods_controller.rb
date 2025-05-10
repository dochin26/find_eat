class FoodsController < ApplicationController

    def create
        @result = Result.new(slug: SecureRandom.alphanumeric(12))
        @result.food_id = Food.order("RANDOM()").first.id
        @result.save
        redirect_to result_path(@result.slug)
    end
    
    def show
        @result = Result.find_by(slug: params[:id])
        @food = Food.find(@result.food_id)
    end
end
