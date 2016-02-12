class Activity < ActiveRecord::Base
  belongs_to :goal
  validates :activity, presence: true,
                    length: { minimum: 5 }
end
