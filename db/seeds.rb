
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
ran = (1..100).to_a
file = URI.open('https://source.unsplash.com/collection/9964610')
 y= Listing.new(
    user:User.all.sample,
    description:Faker::Lorem.paragraph(sentence_count: 4),
    title:Faker::FunnyName.two_word_name ,
    address:Faker::Address.street_name,
    latitude:Faker::Address.latitude,
    longitude:Faker::Address.longitude,
    )
  y.img_urls.attach(io: file, filename: "#{ran.sample}.png", content_type: 'image/png')
  y.save!
end

