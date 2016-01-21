class Goal < ActiveRecord::Base
  belongs_to :competence
  validates :description, presence: true,
                    length: { minimum: 5 }
  has_many :activities, dependent: :destroy
  accepts_nested_attributes_for :activities, allow_destroy: :true
end
