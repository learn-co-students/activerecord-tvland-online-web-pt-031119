class CreateShow < ActiveRecord::Migration[5.2]

def change 
    create_table :show do |t|
      t.string :name 
      t.string :genre 
    end
  end
end