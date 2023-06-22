# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "json"

Property.destroy_all


@user_id = 1
property = Property.new(
    name: "Fire house",
    address: "666 Fire Road",
    city: "FireCity",
    zipcode: "66600",
    overview: "Ignite your event at the Firehouse, where historic charm meets modern allure. Experience a captivating venue boasting exposed brick walls, high ceilings, and firefighting memorabilia, perfect for any occasion.",
    rating: 1,
    price_per_night: 99,
    guest_capacity: 1,
    user_id: @user_id
)
file = File.open("db/image/firehouse.jpg")
property.photos.attach(io: file, filename: "firehouse", content_type: "image/png")

file = File.open("db/image/airhouse.png")
property.photos.attach(io: file, filename: "airhouse", content_type: "image/png")

file = File.open("db/image/gianthouse.png")
property.photos.attach(io: file, filename: "gianthouse", content_type: "image/png")

file = File.open("db/image/icehouse.jpg")
property.photos.attach(io: file, filename: "icehouse", content_type: "image/png")

file = File.open("db/image/lighthouse.png")
property.photos.attach(io: file, filename: "lighthouse", content_type: "image/png")

file = File.open("db/image/pockethouse.jpg")
property.photos.attach(io: file, filename: "pockethouse", content_type: "image/png")

file = File.open("db/image/shoehouse.png")
property.photos.attach(io: file, filename: "shoehouse", content_type: "image/png")

file = File.open("db/image/stonehouse.png")
property.photos.attach(io: file, filename: "stonehouse", content_type: "image/png")

file = File.open("db/image/firehouse.jpg")
property.photos.attach(io: file, filename: "firehouse", content_type: "image/png")

file = File.open("db/image/airhouse.png")
property.photos.attach(io: file, filename: "airhouse", content_type: "image/png")

file = File.open("db/image/gianthouse.png")
property.photos.attach(io: file, filename: "gianthouse", content_type: "image/png")

file = File.open("db/image/icehouse.jpg")
property.photos.attach(io: file, filename: "icehouse", content_type: "image/png")

file = File.open("db/image/lighthouse.png")
property.photos.attach(io: file, filename: "lighthouse", content_type: "image/png")

file = File.open("db/image/pockethouse.jpg")
property.photos.attach(io: file, filename: "pockethouse", content_type: "image/png")

file = File.open("db/image/shoehouse.png")
property.photos.attach(io: file, filename: "shoehouse", content_type: "image/png")

file = File.open("db/image/stonehouse.png")
property.photos.attach(io: file, filename: "stonehouse", content_type: "image/png")

property.save!


properties = Property.all

properties.each do |p|
    p.rating = rand(1..5)
    p.guest_capacity = rand(1..10)
    p.save
end
