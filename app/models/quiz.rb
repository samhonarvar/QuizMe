class Quiz < ActiveRecord::Base
  belongs_to :category
  belongs_to :field
  validates :category_id, presence: true
  validates :field_id, presence: true

end
