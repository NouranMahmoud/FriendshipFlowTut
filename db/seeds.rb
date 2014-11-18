# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@users = [{username: "Yousif", email: "yousif@gmail.com", password: "12345678"}, 
          {username: "Mona", email: "mona@gmail.com", password: "12345678"},
          {username: "Sarah", email: "sarah@gmail.com", password: "12345678"},
          {username: "Mickel", email: "mickel@gmail.com", password: "12345678"}]
@users.each do |user|
  User.where(username: user[:username]).first_or_create!(user)
end