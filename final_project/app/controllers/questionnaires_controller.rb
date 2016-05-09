class QuestionnairesController < ApplicationController
  before_filter :authorize, except: :accept
	before_action :load_user
  before_action :set_questionnaire, only: [:show, :accept]
	def index
	  @questionnaires = @user.questionnaires.all
	end

	def show
    @questions = Question.all
	end

  def accept
    accept_token = params[:accept_token]
    if !@questionnaire.accepted and accept_token == @questionnaire.accept_token
      if @user
        @questionnaire.accepted = true
        @questionnaire.user = @user
        if @questionnaire.save
          redirect_to questionnaire_url(@questionnaire)
        end
      else
        session[:accept_token] = accept_token
        redirect_to login_path
      end
    else
      render html: "NOT AUTHORIZED"
    end
  end

	private
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    def questionnaire_params
      params.require(:questionnaire).permit(:user_id, :subject_id)
    end

    def load_user
      @user = @current_user
    end
end
