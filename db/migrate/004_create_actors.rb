class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |attribute|
      attribute.string :first_name
      attribute.string :last_name
    end

  end
  
end