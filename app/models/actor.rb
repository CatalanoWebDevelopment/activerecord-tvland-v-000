require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    binding.pry
    first_name = self.first_name
    last_name = self.last_name
    puts "#{first_name} #{last_name}"
  end

end
