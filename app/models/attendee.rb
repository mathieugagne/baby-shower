class Attendee < ActiveRecord::Base
  scope :attending, where(attending: true)
end
