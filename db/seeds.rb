# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create! id: 1, name: "HJC CL-17 Striker Helmet", price: 499.99, active: true , description: " Advanced Polycarbonate Composite Shell is lightweight and 
features superior
 fit and comfort by using CAD technology
Anti Scratch Pinlock ready Face shield (HJ 09) features new 3D design with 95 percet UV protection",photo: File.new("app/assets/images/hjc.jpg")
Product.create! id: 2, name: "Icon Airmada Sportbike SB1 Helmet ", price: 102.99, active: true , description: "AA rift in the space time continuum  pseudo mechanical 
tendrils ripple across its streamlined form. The Sportbike SB 1 helmet stays one step ahead of the inevitable 
and an outstretched arm s reach away from the authorities.",photo: File.new("app/assets/images/icon.jpg")
Product.create! id: 3, name: "Icon Airmada Thriller Helmet ", price: 280.99, active: true , description: "The Airmada Thriller is not some brony
 gathering. It s more like a throwback to when men roved the hillsides. Hunting myths and trapping legends only to find reality in the jaws of a hellacious terror.
  We own these nights once again. Glow in the dark, howl at the moon, rev to the sky.",photo: File.new("app/assets/images/icon2.jpg")

Product.create! id: 4, name: "Dainese D Air Misano Perforated Race Suit", price: 2499.95, active: true , description: "The Dainese D Air Misano racesuit uses the Intelligent Protection 
System which combines a wireless air bag system with highly evolved microprocessor technology to increase the level 
of protection available to motorcyclists.",photo: File.new("app/assets/images/suit1.jpg")


Product.create! id: 5, name: "Alpinestars GP Pro Race Suit", price: 1195.95, active: true , description: "The Dainese D Air Misano racesuit uses the 
Intelligent Protection System which combines a wireless air bag system with highly evolved microprocessor technology 
to increase the level of protection available to motorcyclists.",photo: File.new("app/assets/images/suit2.jpg")


Product.create! id: 6, name: "Dainese Aero EVO D1 Race Suit", price: 1649.95, active: true , description: "The Dainese Aero EVO D1 Race Suit gets all 
the trickle 
down delights from MotoGP. The first Dainese race suit to feature replaceable elbow sliders, the Aero EVO D1 is designed for the most
 aggressive track rats out there. Riders who really push the limits of their machines and themselves will benefit from the outstanding ergonomics 
 and protective features that keep you focused on hitting those apexes. The Aero EVO D1 also features Dainese's latest gloves to sleeve InnerTech
  system that takes a new approach to how the suit interfaces with your gloves.",photo: File.new("app/assets/images/suit3.jpg")



Product.create! id: 7, name: "Cortech Latigo Air RR Boots", price: 179.99, active: true , description: " Vented Mycro Tech upper
Air Mesh breathable lining
Vented contour TPU heel protection",photo: File.new("app/assets/images/boot1.jpg")

Product.create! id: 8, name: "Dainese TR Course Out Boots", price: 219.99, active: true , description: " The Dainese TR Course Out Boots feature technology and ergonomics 
blended with an aggressive design
 modelled on the shape of the rider's foot. ",photo: File.new("app/assets/images/boot2.jpg")

Product.create! id: 9, name: "Alpinestars SMX 6 Boots", price: 269.99, active: true , description: " The Alpinestars SMX6 Boots feature performance for both track and street that is anatomically profiled and packed with innovative features, the S MX 6 incorporates the latest advancements in Alpinestars performance footwear design and development.",photo: File.new("app/assets/images/boot3.jpg")




OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"