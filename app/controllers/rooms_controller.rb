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
      ActiveModelSerializers::Deserialization.jsonapi_parse(params).slice(
        :comment,
        :other_amenities,
        :pets_allowed,
        :resides,
        :shared_bathroom,
        :shared_kitchen,
        :shared_living_room,
        :visitors_allowed,
        :visitor_policy,
        :rent_amount,
        :rent_type,
        :bathroom,
        :bed,
        :cable,
        :closet,
        :drawer,
        :electricity,
        :furnished,
        :mirror,
        :night_desk,
        :radio,
        :rug,
        :tv,
        :wifi
      )
    end

    def user_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(data[:user]).slice(
        :first_name,
        :last_name,
        :email,
        :phone_number
      )
    end

    def address_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(data[:address]).slice(
        :line1,
        :apt,
        :city,
        :state,
        :zip_code
      )
    end

    def data
      @_data ||= params.require(:data)
    end
end
