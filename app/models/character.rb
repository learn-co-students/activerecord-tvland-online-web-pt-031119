class Character < ActiveRecord::Base
  
  def say_that_thing_you_say
    self.name "alwyas says" self.catchphrase
end
  
end