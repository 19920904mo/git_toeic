class AnswersController < ApplicationController
  def index
   
   @questions = Question.order("created_at DESC")
   @answers = Answer.order("created_at DESC")
  end
  
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
    @answer.user_id = @question.user_id
    
  end
   
  def create
    @answer = Answer.create(create_params)
    
  end

  def show
    @question = Question.find(params[:question_id])
    @answers = @question.answers
  end
  
  private
  def create_params
    params.require(:answer).permit(:user_id, :question_id, :detail)
  end
end
