class AnswerRating < ApplicationRecord
  belongs_to :answer
  belongs_to :interviewer

  #attr_accessor :rating

end
