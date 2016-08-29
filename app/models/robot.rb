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

  def move_left
    case self.orientation
      when "north"
        self.orientation = 'west'
      when "east"
        self.orientation = 'north'
      when "south"
        self.orientation = 'east'
      else
        self.orientation = 'south'
    end
    self.save
  end

end
