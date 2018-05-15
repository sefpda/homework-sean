class Interviewer < ApplicationRecord
  has_many :answer_ratings
  has_many :interview_participants
  has_many :interviews, through: :interview_participants

end
