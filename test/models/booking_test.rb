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

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
