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
      show_name = show.name
    end
    show_name
    self.characters.collect do |character|
      character_name = character.name
    end
    character_name
    "#{character_name} - #{show_name}"
  end

end
