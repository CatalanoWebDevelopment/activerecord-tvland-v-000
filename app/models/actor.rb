require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name = self.first_name
    last_name = self.last_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    binding.pry
    char = self.characters.each do |c|
      c.name
    end

    show = self.shows.each do |s|
      s.name
    end

    "#{char} - #{show}"
  end

end
