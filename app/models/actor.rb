require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

def full_name
  a = []
  a << self.first_name
  a << self.last_name
  a.join(" ")
  #puts "#{self.first_name} #{self.last_name}"

end

def list_roles
  
   characters.collect do |character|
    #binding.pry
    "#{character.name} - #{character.show.name}"
   end

end


end