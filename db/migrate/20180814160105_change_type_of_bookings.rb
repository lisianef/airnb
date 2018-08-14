class ChangeTypeOfBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :starting_on, :date
    change_column :bookings, :ending_on, :date
  end
end
