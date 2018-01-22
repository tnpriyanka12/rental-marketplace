# == Schema Information
#
# Table name: properties
#
#  id                :integer          not null, primary key
#  address           :text
#  city              :string
#  price             :float
#  property_type     :string
#  discounts         :string
#  boolean           :string
#  discount_amount   :float
#  has_extended_stay :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Property < ApplicationRecord
   belongs_to :user, optional: true # as in owner
   has_many :bookings               # done by guest users/owner users

   has_many :users, through: :bookings # as in guests


   has_many :photos
   
end














# ??

# has many photos , photos belong to a property
# has many reviews , reviews belong to property
#        a review is connected to user thru the property

# location : has many properties, has many users
# property belongs to one location , user belongs to one location

#
# location has many Properties
# Properties have many locations
#



# tags : luxury , holiday , low-budget(non-luxury), long-term-rentals, duplex, tree-house, island, large, small, 1-bedroom , 2 bedroom, 3 bedrooms or more, apartment, scenic,

# property can come under luxury & holiday  -> has_many tags
# tag -> has_many properties
