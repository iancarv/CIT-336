class User < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :username, uniqueness: true
	before_validation :load_username

	has_many :questionnaires
	has_many :hosted_questionnaires, :class_name => "Questionnaire", :foreign_key => "subject_id", :dependent => :delete_all
	has_many :answers, through: :hosted_questionnaires

	has_secure_password

	private
	def load_username
		self.username ||= self.email
	end
end
