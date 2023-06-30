class RoomsController < ApplicationController
  def index
    @user = current_user
    @rooms = @user.rooms
  end

  def new
    @room = Room.new
    @user = current_user
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def room_params
    params.require(:room).permit(:name, :detail, :money, :addres, :image, :user_id)
  end
end
