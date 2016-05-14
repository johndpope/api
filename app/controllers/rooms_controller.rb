class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]

  # GET /rooms
  def index
    @rooms = Room.all

    render json: @rooms
  end

  # GET /rooms/1
  def show
    render json: @room
  end

  # POST /rooms
  def create
    @room = Room.new(room_params)
    @room.user = User.new(user_params)
    @room.address = Address.new(address_params)

    if @room.save
      render json: @room, status: :created, location: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      render json: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
  end

  private
    def room_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end

    def user_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params[:data][:user])
    end

    def address_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params[:data][:address])
    end
end
