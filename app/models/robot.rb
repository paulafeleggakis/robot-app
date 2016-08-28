class Robot < ApplicationRecord

  attr_accessor :x_coordinate, :y_coordinate, :orientation

  validates_presence_of :x_coordinate, :y_coordinate, :orientation
  validates_inclusion_of :orientation, in: %w(north south east west), :message => "unknown orientation"

end
