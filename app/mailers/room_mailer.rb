class RoomMailer < ApplicationMailer
  def send_new_room_notification(room_id)
    @room = Room.find(room_id)
    @user = @room.user
    @address = @room.address
    _subject = "New Room Notification: #{@user.full_name}"
    mail(to: ['info@rentirooms.com'], subject: _subject)
  end
end
