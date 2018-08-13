class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :starting_on
      t.datetime :ending_on
      t.string :status
      t.integer :total_price
      t.references :user, foreign_key: true
      t.references :rapper, foreign_key: true

      t.timestamps
    end
  end
end
