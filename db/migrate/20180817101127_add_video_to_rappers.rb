class AddVideoToRappers < ActiveRecord::Migration[5.2]
  def change
    add_column :rappers, :video, :string
  end
end
