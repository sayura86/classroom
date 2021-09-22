class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @newRoom = Room.new
  end

  def show
  end

  def create
    @room = Room.new(params[:room].permit(:title))
    @room.save
    redirect_to rooms_new_path
  end

end
