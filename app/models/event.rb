class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :attendances
  has_many :attendees, -> { distinct }, through: :attendances, source: :user
end
