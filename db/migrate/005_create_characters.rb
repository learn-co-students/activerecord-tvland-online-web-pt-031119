class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |attribute|
      attribute.string :name
      attribute.integer :show_id
      attribute.integer :actor_id
    end

  end
end