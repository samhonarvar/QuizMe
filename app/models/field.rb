class Field < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :category
end
