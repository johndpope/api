class RoomMailerPreview < ActionMailer::Preview
  def send_new_room_notification
    RoomMailer.send_new_room_notification(Room.first.id)
  end
end
