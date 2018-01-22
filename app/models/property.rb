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
   belongs_to :user, optional: true
   has_many :bookings 
end
