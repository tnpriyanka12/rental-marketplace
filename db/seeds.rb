
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

    user5 = User.create username:Faker::Internet.user_name,
     full_name: Faker::Name.name,
     email: Faker::Internet.safe_email,
     profile_pic:'https://i.pinimg.com/236x/ca/fd/4a/cafd4a9ee00e9af923c4bcdb604a2fdd--girl-sketch-face-sketch.jpg',
     user_type: 'Guest',  #options_user_type.sample,
     description: Faker::Lorem.paragraph(5)

     user6 = User.create username:Faker::Internet.user_name,
      full_name: Faker::Name.name,
      email: Faker::Internet.safe_email,
      profile_pic:'https://i.pinimg.com/236x/ca/fd/4a/cafd4a9ee00e9af923c4bcdb604a2fdd--girl-sketch-face-sketch.jpg',
      user_type: 'Registered',  #options_user_type.sample,
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
image:'https://a0.muscache.com/im/pictures/904359/182b801f_original.jpg?aki_policy=xx_large',
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
image:'https://a0.muscache.com/im/pictures/53992414/64510035_original.jpg?aki_policy=xx_large',
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
image:'https://a0.muscache.com/im/pictures/11020275/c7c8987e_original.jpg?aki_policy=x_large',
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
image:'https://a0.muscache.com/im/pictures/52149945/33130c63_original.jpg?aki_policy=xx_large',
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
  image:'https://a0.muscache.com/im/pictures/a59160ae-f50b-4a12-a9b4-db35b4dadca8.jpg?aki_policy=xx_large',
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



# photos

# Property1
photo1 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/904404/1fb6a026_original.jpg?aki_policy=x_large'
photo2 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/907772/24511cf0_original.jpg?aki_policy=x_large'
photo3 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/904435/50e09289_original.jpg?aki_policy=x_large'


# Property 2
photo4 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/50929719/e3c4d938_original.jpg?aki_policy=x_large'
photo5 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/53990877/9042de56_original.jpg?aki_policy=x_large'
photo6 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/53991449/0d3ae165_original.jpg?aki_policy=x_large'
photo7 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/50927476/5d673121_original.jpg?aki_policy=x_large'



# Property 3

photo8 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/11341171/d5ca49b5_original.jpg?aki_policy=small'
photo9 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/11341203/b51c32f5_original.jpg?aki_policy=x_large'

# Property 4
photo10 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/45366808/42d14fce_original.jpg?aki_policy=x_large'
photo11 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/11250061/4c58d7cd_original.jpg?aki_policy=x_large'
photo12 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/45371073/a78175b3_original.jpg?aki_policy=x_large'

# Property 5
photo13 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/46c4ae54-f77a-4515-8bfe-8c0abead0be0.jpg?aki_policy=x_large'
photo14 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/110995700/9c78fd03_original.jpg?aki_policy=x_large'
photo15 = Photo.create image_url: 'https://a0.muscache.com/im/pictures/110995705/58d7f0c6_original.jpg?aki_policy=x_large'






user1.properties << p1 << p2
user2.properties << p3 << p4 << p5
user3.properties << p5


user4.bookings << b1 << b4
user5.bookings << b6


p1.bookings << b1 << b3
p2.bookings << b4 << b6 << b5
p4.bookings << b2




p1.photos << photo1 << photo2 << photo3
p2.photos << photo4 << photo5 << photo6 << photo7
p3.photos << photo8 << photo9
p4.photos << photo10 << photo11 << photo12
p5.photos << photo13 << photo14 << photo15

# bookings = []
# 20.times do
#   b = Booking.create
#   bookings.push b
# end
