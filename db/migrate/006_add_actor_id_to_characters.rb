class AddActorIdToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :actor_id, :integer, :full_name 
  end
end