class FoodsController < ApplicationController
    before_action :set_food, only: [ :show ]

    def show
    end

    private

    def set_food
        @food = Food.order("RANDOM()").first
    end
end
