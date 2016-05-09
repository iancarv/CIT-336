class HostedController < ApplicationController
  before_filter :authorize
  before_action :load_user
  before_action :set_questionnaire, only: [:show, :destroy]

  def index
    @questionnaires = @user.hosted_questionnaires.all
  end

  def show
  end

  def view
    @questions = Question.all
    @answers = @user.answers
    @questionnaires = @user.hosted_questionnaires.all
  end

  def new
    @questionnaire = @user.hosted_questionnaires.new
    @hosted = @questionnaire
  end


  def create
    @questionnaire = @user.hosted_questionnaires.new(questionnaire_params)
    @hosted = @questionnaire
    respond_to do |format|
      if @questionnaire.save
        invitee_email = params[:questionnaire][:user_email]
        Mailer.invite_email(invitee_email, @questionnaire).deliver_later
        format.html { redirect_to hosted_view_url , notice: 'Your invitation was sent.' }
      else
        format.html { render :new }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @questionnaire.destroy
    respond_to do |format|
      format.html { redirect_to hosted_index_url, notice: 'Questionnaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
      @questions = Question.all
      @hosted = @questionnaire
    end

    def questionnaire_params
      params.require(:questionnaire).permit(:user_id, :subject_id, :user_email)
    end

    def load_user
      p "USER"
      @user = @current_user
      p @user
      p @current_user
    end
end
