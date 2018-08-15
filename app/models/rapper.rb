class Rapper < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :agent, class_name: "User"
  has_many :bookings
  mount_uploader :picture, PhotoUploader
  mount_uploader :background_picture, PhotoUploader
end
