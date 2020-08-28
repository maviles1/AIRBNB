
require "open-uri"

10.times  do
  User.create!(
    password:"password",
   username:Faker::GreekPhilosophers.name,
   bio:Faker::University.name,
   gender:Faker::Gender.binary_type,
   age:Faker::Number.within(range: 18..70),
   email:Faker::Internet.email,
   first_name:Faker::Name.first_name,
   last_name:Faker::Name.last_name,
    )
end

10.times do

file = URI.open('https://source.unsplash.com/collection/9964610')
 y= Listing.new(
    user:User.all.sample,
    description:Faker::Vehicle.year,
    title:Faker::Vehicle.make,
    address:Faker::Address.street_name,
    latitude:Faker::Address.latitude,
    longitude:Faker::Address.longitude,
    )
  y.img_url.attach(io: file, filename: "#{rand(1..100)}.png", content_type: 'image/png')
  y.save
end

