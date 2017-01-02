class Category < ActiveRecord::Base
  has_many :quizzes, dependent: :destroy
  belongs_to :field
  before_destroy :used_by_quiz
  validates :name, presence: true
  validates :name, uniqueness: true

  def used_by_quiz
    if quizzes.empty?
      return true
    else
      errors.add(:base, 'Quiz depending on this')
      return false
    end
  end

end
