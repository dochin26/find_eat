class FoodsController < ApplicationController
    # before_action :set_food, only: [ :show ]

    def create
        @result = Result.new(slug: SecureRandom.alphanumeric(12))
        @result.food_id = Food.order("RANDOM()").first.id
        @result.save
        redirect_to result_path(@result.slug)
    end
    
    def show
        @result = Result.find_by(slug: params[:id])
        @food = Food.find(@result.food_id)
        # if @result.food_id
        #     @food = Food.order("RANDOM()").first
        #     @result.food_id = @food.id
        #     @result.save
        # else
        #     @food = Food.find(@result.food_id)
        # end


    end

    private

    # def set_food
    #     if @result.food_id == nill
    #         @food = Food.order("RANDOM()").first
    #         @food.id = @result.food_id
    #         @result.save
    #     else
    #         @result = Result.find_by(slug: params[:id])
    #     end
    # end
end
