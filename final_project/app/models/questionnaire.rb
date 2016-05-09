class Questionnaire < ActiveRecord::Base
	attr_accessor :user_email
    before_validation :find_user

    has_secure_token :accept_token
    validates :subject, presence: true
	after_create :create_answers
	has_many :answers
	belongs_to :user
	belongs_to :subject, :class_name => "User"

	private
    def create_answers
    	Question.all.each do |q|
    		Answer.create(question: q, questionnaire: self)
    	end
    end

    def find_user
    	return unless @user_email
    	user = User.find_by email: @user_email
        return unless user
    	self.user_id = user.id
    end
end
