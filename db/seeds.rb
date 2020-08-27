# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times  do
  User.create(
   username:Faker::GreekPhilosophers.name,
   bio:Faker::University.name,
   gender:Faker::Gender.binary_type,
   age:Faker::Number.within(range: 18..70),
   email:Faker::Internet.email,
   first_name:Faker::Name.first_name,
   last_name:Faker::Name.last_name,
   img_url: "https://source.unsplash.com/collection/4492634"
    )
end
