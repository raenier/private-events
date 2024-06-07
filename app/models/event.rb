class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :attendances
  has_many :attendees, -> { distinct }, through: :attendances, source: :user

  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today).or(where(date: nil)) }
end
