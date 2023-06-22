# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "json"

Booking.destroy_all
Property.destroy_all


@user_id = 2

file1 = File.open("db/image/spongebobhouse.png")
file2 = File.open("db/image/bob1.jpg")
file3 = File.open("db/image/bob2.jpg")
file4 = File.open("db/image/bob3.jpg")
file5 = File.open("db/image/bob4.jpg")
property = Property.new(
name: "Sponge Bob house",
address: "11 Sponge Road",
city: "BikiniCity",
zipcode: "11111",
overview: "Dive into the world of Bobsponge at the Bobsponge House, a vibrant underwater retreat inspired by the beloved cartoon. With its colorful decor and playful ambiance, it offers a fun-filled setting for an event that will delight both young and young at heart.",
rating: 1,
price_per_night: 219,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file1, filename: "spongebobhouse1", content_type: "image/png")
property.photos.attach(io: file2, filename: "spongebobhouse2", content_type: "image/png")
property.photos.attach(io: file3, filename: "spongebobhouse3", content_type: "image/png")
property.photos.attach(io: file4, filename: "spongebobhouse4", content_type: "image/png")
property.photos.attach(io: file5, filename: "spongebobhouse5", content_type: "image/png")
property.save!


file = File.open("db/image/firehouse.jpg")
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

property.save!


file = File.open("db/image/icehouse.jpg")
property = Property.new(
name: "Ice house",
address: "123 Ice Road",
city: "IceCity",
zipcode: "12300",
overview: "Chill out in style at the Icehouse, an icy haven for unforgettable events. With its sleek architecture and frosty ambiance, it’s the perfect venue to cool down and create lasting memories.",
rating: 1,
price_per_night: 199,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "icehouse", content_type: "image/png")
property.save!


file = File.open("db/image/rockhouse.png")
property = Property.new(
name: "Rock house",
address: "124 Rock Road",
city: "RockCity",
zipcode: "12400",
overview: "Rock the night away at the Rockhouse, a dynamic venue that amplifies your event’s energy. With its edgy atmosphere and state-of-the-art sound system, it’s the ultimate destination for music enthusiasts and unforgettable celebrations.",
rating: 1,
price_per_night: 299,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "rockhouse", content_type: "image/png")
property.save!


file = File.open("db/image/upsidedownhouse.png")
property = Property.new(
name: "Upside Down house",
address: "69 Down Road",
city: "UpsideCity",
zipcode: "69000",
overview: "Turn your world upside down at the Upside Down House, a whimsical venue that defies gravity. Step into a surreal experience where floors become ceilings, and everything is delightfully topsy-turvy, creating a unique backdrop for an unforgettable event.",
rating: 1,
price_per_night: 399,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "upsidedownhouse", content_type: "image/png")
property.save!


file = File.open("db/image/helllakehouse.jpg")
property = Property.new(
name: "Hell Lake house",
address: "666 Hell Road",
city: "LakeCity",
zipcode: "66666",
overview: "Embark on a daring journey at Hell Lake House, a hauntingly beautiful venue shrouded in mystery. With its dark allure and stunning lakefront views, it sets the stage for an unforgettable event that embraces the allure of the unknown.",
rating: 1,
price_per_night: 666,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "helllakehouse", content_type: "image/png")
property.save!

@user_id = 2

file = File.open("db/image/sandhouse.jpg")
property = Property.new(
name: "Sand house",
address: "135 Sand Road",
city: "SandCity",
zipcode: "13500",
overview: "Escape to the Sandhouse, a serene oasis by the shore for your dream event. With its beach-inspired decor and tranquil ambiance, it offers a perfect setting to unwind and create lasting memories on the sandy shores.",
rating: 1,
price_per_night: 999,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "sandhouse", content_type: "image/png")
property.save!


file = File.open("db/image/octopushouse.png")
property = Property.new(
name: "Octopus house",
address: "157 Sea Road",
city: "UnderSeaCity",
zipcode: "15700",
overview: "Embrace the whimsical charm of the Octopus House, a uniquely designed venue that transports you to an underwater wonderland. With its vibrant colors and tentacle-inspired architecture, it offers an unforgettable setting for a truly extraordinary event.",
rating: 1,
price_per_night: 999,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "octopushouse", content_type: "image/png")
property.save!


file = File.open("db/image/militaryhouse.png")
property = Property.new(
name: "Military house",
address: "128 Military Road",
city: "MilitaryCity",
zipcode: "12800",
overview: "Salute the past at the Military House, an esteemed venue steeped in history and valor. With its distinguished ambiance and rich military heritage, it provides a prestigious setting for events that honor bravery and commemorate significant occasions.",
rating: 1,
price_per_night: 399,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "militaryhouse", content_type: "image/png")
property.save!


file = File.open("db/image/taiwanhouse.png")
property = Property.new(
name: "Taiwan house",
address: "136 Taiwan Road",
city: "TaiwanCity",
zipcode: "13600",
overview: "Experience the essence of Taiwan at the Taiwan House, a cultural haven showcasing the vibrant traditions and flavors of the island. With its authentic decor and tantalizing cuisine, it offers a memorable setting for an immersive event that celebrates Taiwanese heritage.",
rating: 1,
price_per_night: 499,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "Taiwanhouse", content_type: "image/png")
property.save!


file = File.open("db/image/metalhouse.png")
property = Property.new(
name: "Metal house",
address: "257 Metal Road",
city: "MetalCity",
zipcode: "25700",
overview: "Unleash your inner rocker at the Metal House, a haven for all things heavy and loud. With its industrial aesthetics and pulsating energy, it's the perfect venue to amplify your event and create a headbanging experience like no other.",
rating: 1,
price_per_night: 599,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "Metalhouse", content_type: "image/png")
property.save!


file = File.open("db/image/weirdhouse.png")
property = Property.new(
name: "Weird house",
address: "476 Weird Road",
city: "WeirdCity",
zipcode: "47600",
overview: "Step into the extraordinary at the Weird House, a realm of eccentricity and delightful oddities. With its offbeat charm and whimsical decor, it promises an unforgettable event that celebrates the wonderfully strange and embraces the unconventional.",
rating: 1,
price_per_night: 699,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "Weirdhouse", content_type: "image/png")
property.save!


file = File.open("db/image/treehouse.png")
property = Property.new(
name: "Tree house",
address: "951 Tree Road",
city: "TreeCity",
zipcode: "95100",
overview: "Escape to the enchanting Tree House, a serene retreat nestled amidst the branches and leaves. With its rustic charm and nature's embrace, it offers a unique setting to reconnect with the outdoors and create magical memories above the ground.",
rating: 1,
price_per_night: 799,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "Treehouse", content_type: "image/png")
property.save!


file = File.open("db/image/greenhouse.png")
property = Property.new(
name: "Green house",
address: "777 Green Road",
city: "GreenCity",
zipcode: "77700",
overview: "Immerse yourself in nature at the Green House, a lush oasis where tranquility and sustainability unite. With its verdant surroundings and eco-friendly design, it provides a refreshing backdrop for an event that celebrates both elegance and environmental consciousness.",
rating: 1,
price_per_night: 899,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "Greenhouse", content_type: "image/png")
property.save!


file = File.open("db/image/woodhouse.png")
property = Property.new(
name: "Wood house",
address: "555 Wood Road",
city: "WoodCity",
zipcode: "55500",
overview: "Experience rustic elegance at the Wood House, a cozy haven nestled amidst nature's embrace. With its warm wooden interiors and serene surroundings, it offers a charming setting for an intimate event that celebrates the beauty of natural craftsmanship.",
rating: 1,
price_per_night: 249,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "Woodhouse", content_type: "image/png")
property.save!


file = File.open("db/image/darkforesthouse.png")
property = Property.new(
name: "Dark Forest house",
address: "666 Dark Road",
city: "ForestCity",
zipcode: "66000",
overview: "Enter the enchanting realm of the Dark Forest House, a captivating haven immersed in mystery and allure. With its shadowy ambiance and woodland charm, it beckons guests to embrace the bewitching atmosphere for a truly memorable event.",
rating: 1,
price_per_night: 849,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "DarkForesthouse", content_type: "image/png")
property.save!

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


file = File.open("db/image/birdhouse.jpg")
property = Property.new(
name: "Bird house",
address: "222 Bird Road",
city: "BirdCity",
zipcode: "22200",
overview: "Nestle in the Bird House, a whimsical abode where nature's melodies take center stage. With its charming aviary-inspired design and tranquil surroundings, it offers a delightful setting for an event that celebrates the beauty of birdsong and the wonders of the natural world.",
rating: 1,
price_per_night: 219,
guest_capacity: 1,
user_id: @user_id
)
property.photos.attach(io: file, filename: "Birdhouse", content_type: "image/png")
property.save!


properties = Property.all

properties.each do |p|
    p.rating = rand(1..5)
    p.guest_capacity = rand(1..10)
    p.save
end
