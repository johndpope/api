class Room < ApplicationRecord
  belongs_to :user
  belongs_to :address

  after_commit :send_new_room_notification, on: :create

  def send_new_room_notification
    RoomMailer.send_new_room_notification(id).deliver_later
  end
end
