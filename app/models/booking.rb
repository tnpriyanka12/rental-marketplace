# == Schema Information
#
# Table name: bookings
#
#  id               :integer          not null, primary key
#  date             :string
#  total_amount     :float
#  booking_number   :integer
#  check_in         :string
#  check_out        :string
#  discount_availed :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Booking < ApplicationRecord
  belongs_to :user    , optional: true #guest
  belongs_to :property, optional: true
end
