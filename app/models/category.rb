class Category < ActiveRecord::Base
  belongs_to :quiz
  has_many :fields
end
