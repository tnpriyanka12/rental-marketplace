
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# rails g model User username:string full_name:string email:string profile_pic:string user_type:string description:string
#
# rails g model Property address:text city:string price:float property_type:string discounts: boolean discount_amount:float has_extended_stay:boolean
#
# rails g model Booking date: total_amount:float booking_number:integer check_in:string check_out:string discount_availed:boolean
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


options_user_type         = ['Registered', 'Guest']
options_property_type     = ['Room', 'Apartment', 'Villa']
options_bool_type         = [true, false]


# User
User.destroy_all

user1 = User.create username:Faker::Internet.user_name,
 full_name: Faker::Name.name,
 email: Faker::Internet.safe_email,
 profile_pic:'https://i.pinimg.com/236x/ca/fd/4a/cafd4a9ee00e9af923c4bcdb604a2fdd--girl-sketch-face-sketch.jpg',
 user_type: options_user_type.sample,
 description: Faker::Lorem.paragraph(5)

 user2 = User.create username:Faker::Internet.user_name,
  full_name: Faker::Name.name,
  email: Faker::Internet.safe_email,
  profile_pic:'https://i.pinimg.com/236x/ca/fd/4a/cafd4a9ee00e9af923c4bcdb604a2fdd--girl-sketch-face-sketch.jpg',
  user_type: options_user_type.sample,
  description: Faker::Lorem.paragraph(5)

  user3 = User.create username:Faker::Internet.user_name,
   full_name: Faker::Name.name,
   email: Faker::Internet.safe_email,
   profile_pic:'https://i.pinimg.com/236x/ca/fd/4a/cafd4a9ee00e9af923c4bcdb604a2fdd--girl-sketch-face-sketch.jpg',
   user_type: options_user_type.sample,
   description: Faker::Lorem.paragraph(5)


   user4 = User.create username:Faker::Internet.user_name,
    full_name: Faker::Name.name,
    email: Faker::Internet.safe_email,
    profile_pic:'https://i.pinimg.com/236x/ca/fd/4a/cafd4a9ee00e9af923c4bcdb604a2fdd--girl-sketch-face-sketch.jpg',
    user_type: 'Guest',  #options_user_type.sample,
    description: Faker::Lorem.paragraph(5)

puts "There are #{User.all.length} users"







# Property
Property.destroy_all
p1 = Property.create address: Faker::Address.street_address,
city:Faker::Address.city,
price:Faker::Commerce.price(5000),
property_type: options_property_type.sample,
discounts: options_bool_type.sample,
discount_amount:Faker::Commerce.price(100),
has_extended_stay: options_bool_type.sample,
image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_CzKCX69Vyh1YX0TjnYClqX3RP1zLxBLg15ycWDkR62-Gaj0_',
description: 'will fill later',
number_of_beds: 2,
number_of_baths: 2,
number_of_parkings: 1,
pets_allowed: false,
wifi_present: true,
smoking_allowed: false,
cancellation_policy: 'will fill later'

p2 = Property.create address: Faker::Address.street_address,
city:Faker::Address.city,
 price:Faker::Commerce.price(5000),
  property_type: options_property_type.sample,
   discounts: options_bool_type.sample,
     discount_amount:Faker::Commerce.price(100),
has_extended_stay: options_bool_type.sample,
image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_CzKCX69Vyh1YX0TjnYClqX3RP1zLxBLg15ycWDkR62-Gaj0_',
description: 'will fill later',
number_of_beds: 2,
number_of_baths: 2,
number_of_parkings: 1,
pets_allowed: false,
wifi_present: true,
smoking_allowed: false,
cancellation_policy: 'will fill later'


p3 = Property.create address: Faker::Address.street_address,
city:Faker::Address.city,
 price:Faker::Commerce.price(5000),
  property_type: options_property_type.sample,
   discounts: options_bool_type.sample,
     discount_amount:Faker::Commerce.price(100),
has_extended_stay: options_bool_type.sample,
image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_CzKCX69Vyh1YX0TjnYClqX3RP1zLxBLg15ycWDkR62-Gaj0_',
description: 'will fill later',
number_of_beds: 2,
number_of_baths: 2,
number_of_parkings: 1,
pets_allowed: false,
wifi_present: true,
smoking_allowed: false,
cancellation_policy: 'will fill later'


p4 = Property.create address: Faker::Address.street_address,
city:Faker::Address.city,
 price:Faker::Commerce.price(5000),
  property_type: options_property_type.sample,
   discounts: options_bool_type.sample,
     discount_amount:Faker::Commerce.price(100),
has_extended_stay: options_bool_type.sample,
image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_CzKCX69Vyh1YX0TjnYClqX3RP1zLxBLg15ycWDkR62-Gaj0_',
description: 'will fill later',
number_of_beds: 2,
number_of_baths: 2,
number_of_parkings: 1,
pets_allowed: false,
wifi_present: true,
smoking_allowed: false,
cancellation_policy: 'will fill later'


p5 = Property.create address: Faker::Address.street_address,
city:Faker::Address.city,
 price:Faker::Commerce.price(5000),
  property_type: options_property_type.sample,
   discounts: options_bool_type.sample,
     discount_amount:Faker::Commerce.price(100),
      has_extended_stay: options_bool_type.sample,
  image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_CzKCX69Vyh1YX0TjnYClqX3RP1zLxBLg15ycWDkR62-Gaj0_',
  description: 'will fill later',
  number_of_beds: 2,
  number_of_baths: 2,
  number_of_parkings: 1,
  pets_allowed: false,
  wifi_present: true,
  smoking_allowed: false,
  cancellation_policy: 'will fill later'
puts "There are #{Property.all.length} Property Listings"



Booking.destroy_all
# Booking
b1 = Booking.create date:'1-1-2010', total_amount:Random.rand(1000), booking_number:Faker::Number.number(5), check_in:'10-1-2010', check_out:'15-1-2010', discount_availed: options_bool_type.sample
b2 = Booking.create date:'1-2-2010', total_amount:Random.rand(1000), booking_number:Faker::Number.number(5), check_in:'10-2-2010', check_out:'15-2-2010', discount_availed: options_bool_type.sample
b3 = Booking.create date:'1-3-2010', total_amount:Random.rand(1000), booking_number:Faker::Number.number(5), check_in:'10-3-2010', check_out:'15-3-2010', discount_availed: options_bool_type.sample
b4 = Booking.create date:'1-4-2010', total_amount:Random.rand(1000), booking_number:Faker::Number.number(5), check_in:'10-4-2010', check_out:'15-4-2010', discount_availed: options_bool_type.sample
b5 = Booking.create date:'1-5-2010', total_amount:Random.rand(1000), booking_number:Faker::Number.number(5), check_in:'10-5-2010', check_out:'15-5-2010', discount_availed: options_bool_type.sample
b6 = Booking.create date:'1-6-2010', total_amount:Random.rand(1000), booking_number:Faker::Number.number(5), check_in:'10-6-2010', check_out:'15-6-2010', discount_availed: options_bool_type.sample
puts "There are #{Booking.all.length} bookings"




user1.properties << p1 << p2
user2.properties << p3 << p4 << p5
user3.properties << p5


p1.bookings << b1 << b3
p2.bookings << b4 << b6 << b5
p4.bookings << b2




# bookings = []
# 20.times do
#   b = Booking.create
#   bookings.push b
# end
