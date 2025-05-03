# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'start create foods ...'

foods = ["ramen", "curryrice", "teisyoku"]
commnents = ["寒い日に食べたい", "みんな大好き", "出汁が効いてます"]
names = ["ラーメン", "カレーライス", "焼き魚定食"] 

foods.length.times do |i|
  Food.create!(
    name: names[i],
    comment: comments[i],
    food_image: foods[i],
    created_at: Time.current,
    updated_at: Time.current 
  )
end 

puts 'finish create foods ...'