class Activity < ActiveRecord::Base
  belongs_to :goal
  validates :activity, length: {
    minimum: 5,
    maximum: 80,
    presence: true,
  }
end
