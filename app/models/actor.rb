class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show, through: :characters

  def full_name
    self.first_name + " " + self.last_name

  end

  def list_roles
    show_roles = []
    self.characters.each do |role|
      show_roles << role.name
    end
    self.show.each do |show|
      show_roles << show.name
    end
    show_roles.join(" - ")

  end
  
end