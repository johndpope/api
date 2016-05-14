class User < ApplicationRecord
  has_many :rooms

  def full_name
    "#{first_name} #{last_name}"
  end
end
