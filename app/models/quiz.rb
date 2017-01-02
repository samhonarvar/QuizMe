class Quiz < ActiveRecord::Base
  belongs_to :category
  belongs_to :field
end
