class Quiz < ActiveRecord::Base
  has_many :categories
  has_many :fields
end
