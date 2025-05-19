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

foods = [
  "jiro", "uradaiki"
]

comments = [
  "ガッツリしたいそこのアナタ！\r\n合言葉はもちろん、全マシマシ🧄🧄",
  "豚骨と醤油のアクセントが最高！\r\n海苔とご飯も一緒にどうぞ。"
]

names = [
  "ラーメン二郎", "家系ラーメン"
]

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
