class Goal < ActiveRecord::Base
  belongs_to :competence
 validates :description, length: {
    minimum: 5,
    maximum: 80,
    presence: true,
    too_short: "Een goal moet minimaal %{count} woorden hebben",
    too_long: "Een goal kan maximaal %{count} woorden hebben"
  }
  has_many :activities, dependent: :destroy
  accepts_nested_attributes_for :activities, allow_destroy: :true
end


