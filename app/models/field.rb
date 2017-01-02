class Field < ActiveRecord::Base
  has_many :quiz
  has_many :category, dependent: :destroy
  before_destroy :used_by_category
  validates :name, presence: true
  validates :name, uniqueness: true

  def used_by_category
    if category.empty?
      return true
    else
      errors.add(:base, 'Quiz depending on this')
      return false
    end
  end

end
