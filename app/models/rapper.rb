class Rapper < ApplicationRecord
  belongs_to :agent, class_name: "User"
  has_many :bookings
  mount_uploader :picture, PhotoUploader
  mount_uploader :background_picture, PhotoUploader
end
