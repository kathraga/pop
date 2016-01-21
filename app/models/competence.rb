class Competence < ActiveRecord::Base
  has_many :goals
  ALL_BEHAVIOURS = ["A, B, C"]
  BEHAVIOURS_RESEARCH = ["A"]
  BEHAVIOURS_CONCEPTING = ["B"]
  BEHAVIOURS_DESIGN = ["C"]
end
