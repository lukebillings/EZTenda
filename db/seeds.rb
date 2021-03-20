# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
require "open-uri"
Bid.destroy_all
Tender.destroy_all
User.destroy_all



#bar users
10.times do
  user = User.create!(name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "123456",
    brand: false,
    bar: true,
    about: "We are a trendy bar in East London"
    )
end

#brand users

10.times do
  user = User.create!(name: Faker::Company.name,
    email: Faker::Internet.email,
    password: "123456",
    brand: true,
    bar: false,
    about: "We are a drinks startup"
    )
end



#tenders


10.times do
  tender = Tender.create!(deal_size: rand(1000..5000),
    volume: rand(1000..5000),
    deal_length: rand(4..24),
    end_date: DateTime.new(2021, 06, 12, 18, 00, 0),
    total_bids: rand(1..10),
    user_id: User.pluck(:id).sample
    )
end


#bids


10.times do
  bid = Bid.create!(listing_deal: "We can give you £500 and 10 posters",
    user_id: User.pluck(:id).sample,
    tender_id: Tender.pluck(:id).sample,
    accepted: false
    )
end
