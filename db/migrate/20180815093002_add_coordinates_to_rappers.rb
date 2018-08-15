class AddCoordinatesToRappers < ActiveRecord::Migration[5.2]
  def change
    add_column :rappers, :latitude, :float
    add_column :rappers, :longitude, :float
  end
end
