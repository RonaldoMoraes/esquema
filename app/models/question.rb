class Question < ActiveRecord::Base
  belongs_to :list
  has_many :answers
end
