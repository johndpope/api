class Room < ApplicationRecord
  belongs_to :user
  belongs_to :address

  after_commit :notify_new_room, on: :create

  def notify_new_room
    # TODO
  end
end
