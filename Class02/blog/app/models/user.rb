class User < ActiveRecord::Base

  def nome_artistico
    self.name.reverse
  end

  def turn_male
    self.male = true
  end

  def turn_male!
    self.turn_male
    self.save
  end

end
