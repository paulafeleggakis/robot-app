require 'spec_helper'

describe Robot do

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
               in_array(['north', 'south', 'east', 'west'])
  end

end
