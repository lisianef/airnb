class CreateRappers < ActiveRecord::Migration[5.2]
  def change
    create_table :rappers do |t|
      t.string :blaz
      t.string :description
      t.string :punchline
      t.string :style
      t.string :origin
      t.string :address
      t.integer :price_per_day

      t.timestamps
    end
  end
end
