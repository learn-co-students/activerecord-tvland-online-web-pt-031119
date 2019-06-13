require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = [self.first_name, self.last_name]
    full = name.join(" ")
  end

  def list_roles
    char = []
    show = []
    self.characters.collect do |x|
      char << x.name
    end
    self.shows.collect do |x|
      show << x.name
    end
    list = [char, show]
    lroles = list.flatten.join(" - ")
  end
end
