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
    self.shows.collect do |show|
      s_name = show.name
    end
    s_name
    self.characters.collect do |character|
      c_name = character.name
    end
    character_name
    "#{character_name} - #{show_name}"
  end

end
