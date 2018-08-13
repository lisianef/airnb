class AddColumnPictureToRappers < ActiveRecord::Migration[5.2]
  def change
    add_column :rappers, :picture, :string
  end
end
