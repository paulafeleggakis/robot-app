require 'spec_helper'

describe Robot do

  let(:orientations) {['north', 'south', 'east', 'west']}

  let(:robot) {Robot.create(:orientation => 'south', x_coordinate: 1, y_coordinate: 1)}


  it { should validate_presence_of(:x_coordinate) }

  it { should validate_presence_of(:y_coordinate) }

  it { should validate_presence_of(:orientation) }

  it do
    should validate_inclusion_of(:orientation).
               in_array(orientations)
  end

  context '.move' do

    it 'increments the x-coord if robot is facing north' do
      robot.orientation = 'north'
      robot.x_coordinate = 1
      robot.move
      expect(robot.x_coordinate).to eql(2)
    end

    it 'decrements the x-coord if robot is facing south' do
      robot.orientation = 'south'
      robot.x_coordinate = 1
      robot.move
      expect(robot.x_coordinate).to eql(0)
    end

    it 'increments the y-coord if robot is facing east' do
      robot.orientation = 'east'
      robot.y_coordinate = 1
      robot.move
      expect(robot.y_coordinate).to eql(2)
    end

    it 'decrements the y-coord if robot is facing west' do
      robot.orientation = 'west'
      robot.y_coordinate = 1
      robot.move
      expect(robot.y_coordinate).to eql(0)
    end

  end

  context '.move_direction' do

    context 'left' do
      it 'rotates to west if facing north' do
        robot.orientation = 'north'
        robot.move_direction('left')
        expect(robot.orientation).to eql('west')
      end

      it 'rotates to north if facing east' do
        robot.orientation = 'east'
        robot.move_direction('left')
        expect(robot.orientation).to eql('north')
      end

      it 'rotates to east if facing south' do
        robot.orientation = 'south'
        robot.move_direction('left')
        expect(robot.orientation).to eql('east')
      end

      it 'rotates to south if facing west' do
        robot.orientation = 'west'
        robot.move_direction('left')
        expect(robot.orientation).to eql('south')
      end
    end

    context 'right' do
      it 'rotates to east if facing north' do
        robot.orientation = 'north'
        robot.move_direction('right')
        expect(robot.orientation).to eql('east')
      end

      it 'rotates to south if facing east' do
        robot.orientation = 'east'
        robot.move_direction('right')
        expect(robot.orientation).to eql('south')
      end

      it 'rotates to west if facing south' do
        robot.orientation = 'south'
        robot.move_direction('right')
        expect(robot.orientation).to eql('west')
      end

      it 'rotates to north if facing west' do
        robot.orientation = 'west'
        robot.move_direction('right')
        expect(robot.orientation).to eql('north')
      end
    end

  end

  context '.report' do

    it 'returns a string stating the robots position and orientation' do
      robot.orientation = 'west'
      robot.x_coordinate = 1
      robot.y_coordinate = 1
      expect(robot.report).to eql("The robots position is (1,1) facing west")
    end

  end

  context '.valid_position?' do

    xit 'should not move the robot if the position moved to is invalid' do
      robot.orientation = 'north'
      robot.x_coordinate = 5
      robot.y_coordinate = 5
      robot.move
      expect(robot.x_coordinate).to eql(5)
      expect(robot.y_coordinate).to eql(5)
    end

  end

end
