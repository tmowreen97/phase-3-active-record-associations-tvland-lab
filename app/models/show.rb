require 'pry'

class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    list = []
    list.push"#{Actor.find(self.id).first_name} #{Actor.find(self.id).last_name}"
    list
  end

end
