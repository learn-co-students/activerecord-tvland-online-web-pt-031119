class CreateCharacters < ActiveRecord::Migration[4.2]
  
  
  create_table :characters do |t|
    t.string :name
  end
  
  
end