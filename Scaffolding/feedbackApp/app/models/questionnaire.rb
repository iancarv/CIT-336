class Questionnaire < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :subject, :class_name => "User"
end
