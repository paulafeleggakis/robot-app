class RobotsController < ApplicationController
  before_action :set_robot, only: [:show, :edit, :update, :destroy]

  # GET /robots
  # GET /robots.json
  def index
    @robot = Robot.create
  end

  # GET /robots/1
  # GET /robots/1.json
  def show
    set_robot
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /robots/new
  def new
    @robot = Robot.new
  end


  # PUT /robots/1
  # PUT /robots/1.json
  def update
    @robot = set_robot

    respond_to do |format|
      if @robot.update(robot_params)
        format.html { render :show }
      end
    end
  end

  def move
    set_robot
    @robot.move
    respond_to do |format|
      format.html { render :show }
    end
  end

  def direction
    set_robot
    @direction = params[:direction]
    @robot.move_direction(@direction)
    respond_to do |format|
      format.html { render :show }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_robot
      @robot = Robot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def robot_params
      params.require(:robot).permit(:x_coordinate, :y_coordinate, :orientation)
    end
end
