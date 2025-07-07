class FoodsController < ApplicationController
    def create
        @result = Result.new(slug: SecureRandom.alphanumeric(12))
        @result.food_id = Food.order("RANDOM()").first.id
        @result.save
        redirect_to loading_path(@result.slug)
    end

    def loading
        @result = Result.find_by(slug: params[:id])
        if @result.nil?
          flash[:alert] = "そのメニューは存在しません"
          redirect_to root_path
        end
    end

    def show
        @result = Result.find_by(slug: params[:id])
        if @result.nil?
          flash[:alert] = "そのメニューは存在しません"
          redirect_to root_path
        else
          @food = Food.find(@result.food_id)
          prepare_meta_tags(@food)
        end
    end

    private

    def prepare_meta_tags(food)
    ## このimage_urlにMiniMagickで設定したOGPの生成した合成画像を代入する
    image_url = "#{request.base_url}#{view_context.asset_path("foods/#{food.food_image}.png")}"
    set_meta_tags og: {
                    site_name: "メシタベ！",
                    title: "今日は#{food.name}にしようかな！",
                    description: "食事ルーレットで今日のご飯を決めよう！",
                    type: "website",
                    url: request.original_url,
                    image: image_url,
                    locale: "ja-JP"
                  },
                  twitter: {
                    card: "summary_large_image",
                    site: "@https://x.com/dochin26",
                    image: image_url
                  }
  end
end
