# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  username    :string
#  full_name   :string
#  email       :string
#  profile_pic :string
#  user_type   :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :integer
#

class User < ApplicationRecord
   has_many :properties # owner
   has_many :bookings   # guest/owner
end
