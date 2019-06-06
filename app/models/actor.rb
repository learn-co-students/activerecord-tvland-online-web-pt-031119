require 'Pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    p "#{self.first_name} #{self.last_name}"
  end 

  def list_roles
    roles = self.characters.map {|c| c.name} + self.shows.map {|s| s.name}
    roles.join(" - ")
  end
end