require 'Pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    p "#{self.first_name} #{self.last_name}"
  end

  def self.list_roles
    self.shows
    binding.pry
  end
  binding.pry
end