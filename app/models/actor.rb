require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    binding.pry
    first_name = self
  end

end
