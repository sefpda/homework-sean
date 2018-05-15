class Answer < ApplicationRecord
  belongs_to :candidate
  belongs_to :question
  belongs_to :interview
  has_many :answer_ratings

  def average_rating
    ratings = answer_ratings.map(&:rating).reject{|r| r == 0}
    return 0 if ratings.empty?
    ratings.sum / ratings.size.to_f
  end
end
