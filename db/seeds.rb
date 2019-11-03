# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

num = 1 
categories = ["雨の日", "付き合う前", "初デート", "ゆったり" ]
category_id = rand(categories.length)
user_len = 1 

10.times do |p|
    Plan.create!(
        category_id: category_id,
        user_id: user_len,
        plan_name: "sample plan#{num}",
        plan_date: 2019-10-23,
    )
    num += 1
end

10.times do |user|
    User.create!(
        user_name: "user#{num}",
        display_name: "display#{num}",
        first_name: "first#{num}",
        last_name: "last#{num}",
        age: num,
        gender: 1,
        couple_id: num,
        email: "#{num}@#{num}",
        password: "111111"
    )
    num += 1
end

categories.each do |c|
    DateCategory.create!(
        category: c 
    )
end