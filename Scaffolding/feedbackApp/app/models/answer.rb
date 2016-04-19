class Answer < ActiveRecord::Base
  belongs_to :questionnaire
  belongs_to :question
  belongs_to :alternative
end
