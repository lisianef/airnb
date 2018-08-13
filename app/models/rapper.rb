class Rapper < ApplicationRecord
  belongs_to :agent, class_name: "User"
  has_many :bookings
end
