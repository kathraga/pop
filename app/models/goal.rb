class Goal < ActiveRecord::Base
  belongs_to :competence
  validates :description, presence: true,
                    length: { minimum: 5 }



end
