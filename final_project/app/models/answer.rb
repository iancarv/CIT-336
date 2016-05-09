class Answer < ActiveRecord::Base
  belongs_to :alternative
  belongs_to :question
  belongs_to :questionnaire
end
