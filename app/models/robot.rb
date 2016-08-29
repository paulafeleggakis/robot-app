class Robot < ApplicationRecord

  attr_accessor :x_coordinate
  attr_accessor :y_coordinate
  attr_accessor :orientation

  validates_presence_of :x_coordinate, :y_coordinate, :orientation
  validates_inclusion_of :orientation, in: %w(north south east west), :message => "unknown orientation"

  def place (x_ord, y_ord, orientation)
    self.x_coordinate = x_ord
    self.y_coordinate = y_ord
    self.orientation = orientation
    self.save
  end

  def move
    case self.orientation
      when "north"
        self.x_coordinate+=1
      when "south"
        self.x_coordinate-=1
      when "east"
        self.y_coordinate+=1
      else
        self.y_coordinate-=1
    end
    self.save
  end

  def move_direction(direction)
    case self.orientation
      when "north"
        self.orientation = (direction =='left' ? 'west' : 'east')
      when "east"
        self.orientation = (direction =='left' ? 'north' : 'south')
      when "south"
        self.orientation = (direction == 'left' ? 'east' : 'west')
      else
        self.orientation = (direction == 'left' ? 'south' : 'north')
    end
    self.save
  end

  def report
    "The robots position is (#{self.x_coordinate},#{self.y_coordinate}) facing #{self.orientation}"
  end

end
