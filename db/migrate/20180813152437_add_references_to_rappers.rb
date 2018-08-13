class AddReferencesToRappers < ActiveRecord::Migration[5.2]
  def change
    add_column :rappers, :agent_id, :integer
    add_foreign_key :rappers, :users, column: :agent_id
    add_index :rappers, :agent_id
  end
end
