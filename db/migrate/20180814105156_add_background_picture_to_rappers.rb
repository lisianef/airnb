class AddBackgroundPictureToRappers < ActiveRecord::Migration[5.2]
  def change
    add_column :rappers, :background_picture, :string
  end
end
