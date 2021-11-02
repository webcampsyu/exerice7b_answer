# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
  User.create(
    name: "testuser#{n+1}",
    email: "testuser#{n+1}@test.com",
    password: "testuser#{n+1}",
  )
end


# Userそれぞれに対して、10レコードずつBookを作成
# 現在時刻から 0 ~ 15 までのランダムな数字を引いた時刻でBookを作成

User.all.each do |user|
  10.times do |n|
    Book.create(
      title: "testbook#{n+1}",
      body: "testbook#{n+1}",
      user_id: user.id,
      created_at: Time.current - rand(15).day
    )
  end
end