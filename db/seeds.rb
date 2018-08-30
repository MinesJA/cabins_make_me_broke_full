
Comment.destroy_all
Image.destroy_all
User.destroy_all
Cabin.destroy_all
UserCabin.destroy_all



10.times do
  user = User.create(
    name: Faker::GameOfThrones.character,
    username: Faker::GameOfThrones.character.split(" ")[0],
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
  )

  Random.new.rand(1..8).times do
      cabin = user.cabins.create(
        name: Faker::GameOfThrones.city,
        description: Faker::Lorem.paragraph,
        rooms: Random.new.rand(1..8),
        sq_feet: Random.new.rand(1000..10000),
        acres: Random.new.rand(5..30),
        address_one: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        zip: Faker::Address.zip_code,
        listing_url: Faker::Internet.url
      )

      5.times do
        cabin.images.create(
          image_url: Faker::Placeholdit.image
        )
      end
  end
end

puts "Generated #{Cabin.count} random cabins"
puts "Generated #{Image.count} random images"



5.times do
  user = User.create(
    name: Faker::GameOfThrones.character,
    username: Faker::GameOfThrones.character.split(" ")[0],
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
  )

  Random.new.rand(5..20).times do
    comment = user.comments.create(
      text: Faker::Lorem.sentence
    )

    Cabin.all.sample.comments << comment
  end
end

puts "Generated #{User.count} random users."
puts "Generated #{Comment.count} comments"
