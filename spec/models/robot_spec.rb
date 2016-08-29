require 'spec_helper'

describe Robot do

  let(:orientations) {['north', 'south', 'east', 'west']}

  it 'allows reading and writing of the :x_coordinate' do
    subject.x_coordinate = 1
    expect(subject.x_coordinate).to eql (1)
  end

  it 'allows reading and writing of the :orientation' do
    subject.orientation = 'north'
    expect(subject.orientation).to eql ('north')
  end

  it 'allows reading and writing of the :y_coordinate' do
    subject.y_coordinate = 1
    expect(subject.y_coordinate).to eql (1)
  end

  it { should validate_presence_of(:x_coordinate) }

  it { should validate_presence_of(:y_coordinate) }

  it { should validate_presence_of(:orientation) }

  it do
    should validate_inclusion_of(:orientation).
               in_array(orientations)
  end

  context '.move' do

    it 'increments the x-coord if robot is facing north' do
      subject.orientation = 'north'
      subject.x_coordinate = 1
      subject.move
      expect(subject.x_coordinate).to eql(2)
    end

    it 'decrements the x-coord if robot is facing south' do
      subject.orientation = 'south'
      subject.x_coordinate = 1
      subject.move
      expect(subject.x_coordinate).to eql(0)
    end

    it 'increments the y-coord if robot is facing east' do
      subject.orientation = 'east'
      subject.y_coordinate = 1
      subject.move
      expect(subject.y_coordinate).to eql(2)
    end

    it 'decrements the y-coord if robot is facing west' do
      subject.orientation = 'west'
      subject.y_coordinate = 1
      subject.move
      expect(subject.y_coordinate).to eql(0)
    end

  end

  context '.move_left'

    it 'rotates to west if facing north' do
      subject.orientation = 'north'
      subject.move_left
      expect(subject.orientation).to eql('west')
    end

    it 'rotates to north if facing east' do
      subject.orientation = 'east'
      subject.move_left
      expect(subject.orientation).to eql('north')
    end

    it 'rotates to east if facing south' do
      subject.orientation = 'south'
      subject.move_left
      expect(subject.orientation).to eql('east')
    end

    it 'rotates to south if facing west' do
      subject.orientation = 'west'
      subject.move_left
      expect(subject.orientation).to eql('south')
    end

end
